#include <ruby.h>

extern void frt_std_scan(const char *in,
                  char *out, size_t out_size,
                  const char **start,
                  const char **end,
                  int *token_size);

typedef struct _Tokenizer {
  char *data;
} Tokenizer;

Tokenizer *new_tokenizer(void)
{
  return (Tokenizer*)malloc(sizeof(Tokenizer));
}

void free_tokenizer(Tokenizer *t)
{
  free(t);
}

static VALUE tokenizer_alloc(VALUE klass) {
  Tokenizer *tokenizer;
  VALUE obj;
  // Vendor library creates the Jukebox
  tokenizer = new_tokenizer();
  // then we wrap it inside a Ruby CDPlayer object
  obj = Data_Wrap_Struct(klass, 0, free_tokenizer, tokenizer);
  return obj;
}

VALUE method_next(VALUE self) {
	const char *start = NULL;
  const char *end = NULL;
  int len;

  Tokenizer *t;
  Data_Get_Struct(self, Tokenizer, t);

  char buffer[1024];
  
  frt_std_scan(t->data, buffer, sizeof(buffer) - 1,
                         &start, &end, &len);
  if (len == 0)
    return Qnil;
  
  t->data = end;
  return rb_str_new2(buffer);
}

VALUE method_initialize(VALUE self, VALUE str) {
	char* s = RSTRING_PTR(str);
	Tokenizer *t;
  Data_Get_Struct(self, Tokenizer, t);
  t->data = s;
  return self;
}

VALUE cTokenizer = Qnil;

void Init_ferret_tokenizer() {
	cTokenizer = rb_define_class("FerretTokenizer", rb_cObject);
	rb_define_alloc_func(cTokenizer, tokenizer_alloc);
	rb_define_method(cTokenizer, "initialize", method_initialize, 1);
	rb_define_method(cTokenizer, "next", method_next, 0);
}
