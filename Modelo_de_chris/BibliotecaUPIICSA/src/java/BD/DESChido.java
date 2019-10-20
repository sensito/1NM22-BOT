package BD;

import javax.crypto.Cipher;
import javax.crypto.SecretKey;
import javax.crypto.SecretKeyFactory;
import javax.crypto.spec.DESKeySpec;
import sun.misc.BASE64Decoder;
import sun.misc.BASE64Encoder;

public class DESChido {
    private SecretKey key;
    public String thekey;
    public DESChido(){
        thekey = "aaaaaaaaaa";
    }
    public void GeneradorKey() throws Exception{
        DESKeySpec desKeySpecOPS = new DESKeySpec(thekey.getBytes());
        SecretKeyFactory creadorllave = SecretKeyFactory.getInstance("DES");
        key = creadorllave.generateSecret(desKeySpecOPS);
    }
    
    public String Encriptar(String Mensajito) throws Exception{
        Cipher cifrar = Cipher.getInstance("DES");
        cifrar.init(Cipher.ENCRYPT_MODE,key);
        byte[] cadenaBites = Mensajito.getBytes("UTF8");
        byte[] raw =cifrar.doFinal(cadenaBites);
        BASE64Encoder codificador = new BASE64Encoder();
        String prro64 = codificador.encode(raw);
        return prro64;
    }
    
    public String Desencriptar(String Encriptado) throws Exception{
        Cipher cifrado = Cipher.getInstance("DES");
        cifrado.init(Cipher.DECRYPT_MODE, key);
        BASE64Decoder decodificador = new BASE64Decoder();
        byte[] raw = decodificador.decodeBuffer(Encriptado);
        byte[] CadenaBytes = cifrado.doFinal(raw);
        String deprro64 = new String(CadenaBytes,"UTF8");
        return deprro64;
    }
            
}
