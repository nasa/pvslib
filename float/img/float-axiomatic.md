```mermaid
graph LR;
  single["ieee754_single"]-->top;
  double["ieee754_double"]-->top;
  top["ieee754_top"]-->oper["ieee754_<op>"];
  oper-->ieee754_semantics;
  ieee754_semantics-->ieee754_data;
  ieee754_semantics-->ieee754_domain;
```