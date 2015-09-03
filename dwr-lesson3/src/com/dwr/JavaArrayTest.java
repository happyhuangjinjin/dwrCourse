package com.dwr;

/**
 * 调试界面 http://pc201310051949:8080/dwr-lesson2/dwr/index.html
 * 
 * @author Administrator
 * 
 */
public class JavaArrayTest {

	/**
	 * byte(字节) 8 -128 - 127 0
	 * 
	 * @param i
	 * @return
	 */
	public byte[] ByteArrayType(byte i[]) {
		byte[] ret = new byte[i.length];
		for (int j = 0; j < i.length; j++) {
			ret[j] = (byte) (i[j] + 5);
			System.out.print("ByteType " + ret[j]);
		}

		return ret;
	}

	/**
	 * shot(短整型) 16 -32768 - 32768 0
	 * 
	 * @param i
	 * @return
	 */
	public short[] ShortArrayType(short i[]) {

		short[] ret = new short[i.length];
		for (int j = 0; j < i.length; j++) {
			ret[j] = (short) (i[j] + 5);
			System.out.println("ShortType " + ret[j]);
		}

		return ret;
	}

	/**
	 * int(整型) 32 -2147483648-2147483648 0
	 * 
	 * @param i
	 * @return
	 */
	public int[] IntArrayType(int i[]) {

		int[] ret = new int[i.length];
		for (int j = 0; j < i.length; j++) {
			ret[j] = i[j] + 5;
			System.out.println("IntType " + ret[j]);
		}

		return ret;
	}

	/**
	 * long(长整型) 64 -9233372036854477808-9233372036854477808 0
	 * 
	 * @param i
	 * @return
	 */
	public long[] LongArrayType(long i[]) {

		long[] ret = new long[i.length];
		for (int j = 0; j < i.length; j++) {
			ret[j] =i[j] + 5;
			System.out.println("LongType " + ret[j]);
		}
		return ret;

	}

	/**
	 * float(浮点型) 32 -3.40292347E+38-3.40292347E+38 0.0f
	 * 
	 * @param f
	 * @return
	 */
	public float[] FloatArrayType(float f[]) {

		float[] ret = new float[f.length];
		for (int j = 0; j < f.length; j++) {
			ret[j] = f[j] + 5;
			System.out.println("FloatType " + ret[j]);
		}
		return ret;
	}

	/**
	 * double(双精度) 64 -1.79769313486231570E+308-1.79769313486231570E+308 0.0d
	 * 
	 * @param d
	 * @return
	 */
	public double[] DoubleArrayType(double d[]) {

		double[] ret = new double[d.length];
		for (int j = 0; j < d.length; j++) {
			ret[j] = d[j] + 5;
			System.out.println("DoubleType " + ret[j]);
		}
		return ret;

	}

	/**
	 * char(字符型) 16 ‘ \u0000 -u\ffff ’ ‘\u0000 ’
	 * 
	 * @param i
	 * @return
	 */
	public char[] CharArrayType(char c[]) {

		char[] ret = new char[c.length];
		for (int j = 0; j < c.length; j++) {
			ret[j] = (char) (c[j] + 5);
			System.out.println("CharType " + ret[j]);
		}
		return ret;
	}

	/**
	 * boolean(布尔型) 1 true/false false
	 * 
	 * @param b
	 * @return
	 */
	public boolean[] BooleanArrayType(boolean b[]) {

		boolean[] ret = new boolean[b.length];
		for (int j = 0; j < b.length; j++) {
			ret[j] = !b[j];
			System.out.println("BooleanType " + ret[j]);
		}
		return ret;

	}

	/**
	 * @param str
	 * @return
	 */
	public String[] StringArrayType(String str[]) {

		String[] ret = new String[str.length];
		for (int j = 0; j < str.length; j++) {
			ret[j] = j + " " + str[j];
			System.out.println("StringType " + ret[j]);
		}
		return ret;

	}
}
