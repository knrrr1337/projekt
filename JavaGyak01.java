//package javagyak01;


public class JavaGyak01 {
    
    public static void main(String[] args) {
        
        /*
        primitiv tipusok: memoriaban tarolodnak
        */
       
        // byte = 1 byte
        //short = 2 byte
        /*
        byte b = 7;
        short s = 2100;
        s = b;
        System.out.println("s: " + s);
        
        // 4 byte
        int i = 123456;
        b = (byte)i;
        System.out.println(b);
        
        // 8 byte
        long l = 1234567890;
        i = (int)l;
        s = b;
        l = s;
        i = s;
        System.out.println(s);
        
        
        float f = 1.1234f; //4 byte
        double d = 1.123465; //8 byte
        f = (float)d;
        System.out.println(f + " " + d);
        long lo = 1235679890l;
        f = lo;
        System.out.println(f);
        
        // char 2 byte      
        char c = 'c';
        c = 'g';
        c = '\u0095';
        System.out.println(c);
        
        // boolean = true / false
        boolean logik = true;
        System.out.println(logik);
        
        
        long hosszu = 123456789;
        int integer = 123456;
        float lebeg = 1.1234f;
        double dupla = 1.123456788910111213141516;
        
        hosszu = integer; // l = i
        dupla = lebeg; // d = f
        lebeg = integer; // f = i
        dupla = integer; // d = i
        
        
        // operatorok
        int a = 5;
        System.out.println(a++);
        System.out.println(a);
        System.out.println(++a);
        
        int aa = 5, bb = 2;
        double aaa = 5, bbb = 2;
        System.out.println(aa/bb);
        System.out.println(aaa/bbb);
    
        int mitmegy = 11, nemmegy = 1;
        // >>, << = biten kenti eltolas
        // >> = jobbra, << = balra
        System.out.println(mitmegy >> nemmegy);
        */
        //8421
        //1000
        //
        //00000011
        //00000001
        //
        //     421
        //00001011
        //00000101


        // == osszehasonlito
        // = ertekado

        //bitenkenti es
        int a = 5, b = 4;               //0101
        System.out.println(a & b);      //0100
        //8421                          //0100 = 4
        //1000
        //0010
        //
        //true/false:
        //0000

        //vagy
        int aa = 5, bb = 3;             //0101
        System.out.println(aa | bb);    //0011
                                        //0111 = 7


        //kizaro vagy
        int c = 9, d = 3;               //1001
        System.out.println(c ^ d);      //0011
                                        //1010 = 10 
        
        //logikai vagy / valamelyik igaznak kell lennie
        System.out.println(c > d || d > 6); // = true


    }
    
}