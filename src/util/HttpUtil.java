package util;

import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;

public class HttpUtil{
	
	public static void logParameters(HttpServletRequest req){
		Map<String,String[]> map = req.getParameterMap();
		Set cles = map.keySet();
		Iterator it = cles.iterator();
		String key ="";
		for(Entry<String, String[]> entry : map.entrySet()) {
		    String cle = entry.getKey();
		    String[] valeur = entry.getValue();
		    System.out.print(cle+ ": ");
		    for(int i = 0; i< valeur.length;i++){
		    	System.out.print(valeur[i] + "|");
		    }
		    System.out.println();
		    // traitements
		}
	}
	
}
