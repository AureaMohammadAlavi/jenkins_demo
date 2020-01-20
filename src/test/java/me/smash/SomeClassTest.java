package me.smash;

import static org.junit.Assert.assertEquals;

import org.junit.Test;

public class SomeClassTest {

  @Test
  public void test1() {
    SomeClass someClass = new SomeClass();
    assertEquals(30, someClass.add(10, 20));
  }
}
