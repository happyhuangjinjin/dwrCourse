package com.dwr;

/**
 * 调试界面
 * http://pc201310051949:8080/dwr-lesson2/dwr/index.html
 * @author Administrator
 *
 */
public class JavaTypeTest {

	/**
	 * byte(字节) 8 -128 - 127 0
	 * 
	 * @param i
	 * @return
	 */
	public byte ByteType(byte i) {

		System.out.println("ByteType " + (i + 5));

		return (byte) (i + 5);
	}

	/**
	 * shot(短整型) 16 -32768 - 32768 0
	 * 
	 * @param i
	 * @return
	 */
	public short ShortType(short i) {

		System.out.println("ShortType " + (i + 5));

		return (short)(i + 5);
	}

	/**
	 * int(整型) 32 -2147483648-2147483648 0
	 * 
	 * @param i
	 * @return
	 */
	public int IntType(int i) {

		System.out.println("IntType " + (i + 5));

		return i + 5;
	}

	/**
	 * long(长整型) 64 -9233372036854477808-9233372036854477808 0
	 * 
	 * @param i
	 * @return
	 */
	public long LongType(long i) {

		System.out.println("LongType " + (i + 5));

		return i + 5;
	}

	/**
	 * float(浮点型) 32 -3.40292347E+38-3.40292347E+38 0.0f
	 * 
	 * @param f
	 * @return
	 */
	public float FloatType(float f) {

		System.out.println("FloatType " + (f + 3.0));

		return f + 3.0f;
	}

	/**
	 * double(双精度) 64 -1.79769313486231570E+308-1.79769313486231570E+308 0.0d
	 * 
	 * @param d
	 * @return
	 */
	public double DoubleType(double d) {

		System.out.println("DoubleType " + (d + 3.0d));

		return d + 3.0d;
	}

	/**
	 * char(字符型) 16 ‘ \u0000 -u\ffff ’ ‘\u0000 ’
	 * 
	 * @param i
	 * @return
	 */
	public char CharType(char i) {

		System.out.println("CharType " + (i + 1));

		return (char) (i + 1);
	}

	/**
	 * boolean(布尔型) 1 true/false false
	 * 
	 * @param b
	 * @return
	 */
	public boolean BooleanType(boolean b) {
		System.out.println("BooleanType " + b);

		return !b;
	}

	/**
	 * @param str
	 * @return
	 */
	public String StringType(String str) {

		System.out.println("StringType " + str);

		return "StringType " + str;
	}

}
