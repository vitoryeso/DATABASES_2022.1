package lu

import (
  "testing"
)

func TestHello(t *testing.T) {
  expected := "Hello World!\n"
  if out := lu(); out != expected {
    t.Errorf("Errou bro, falhou no teste. Pois era pra ser %q e foi %q", expected, out)
  }
}
