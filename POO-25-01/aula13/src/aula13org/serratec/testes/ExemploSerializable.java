package aula13org.serratec.testes;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.ObjectInputStream;
import java.io.ObjectOutput;
import java.io.ObjectOutputStream;
import java.util.ArrayList;
import java.util.List;

import aula13org.serratec.entity.Fornecedor;

public class ExemploSerializable {

	public static void main(String[] args) {

		Fornecedor f1 = new Fornecedor("ABC", "123");
		Fornecedor f2 = new Fornecedor("XYZ", "456");

		List<Fornecedor> f = new ArrayList<>();
		f.add(f1);
		f.add(f2);
		
		List<Fornecedor> fLeitura = new ArrayList<>();
		
		try {
			FileOutputStream caminhoGravar = new FileOutputStream("/curso/forcenedor.dat");
			ObjectOutputStream gravarObjeto = new ObjectOutputStream(caminhoGravar);
			gravarObjeto.writeObject(f);
			gravarObjeto.flush();
			gravarObjeto.close();
		} catch (Exception e) {

			System.err.println("Erro");
			e.printStackTrace();
		}
		
		System.out.println("-----------------Recuperando Arquivo--------------");
		try {
			FileInputStream caminhoLeitura = new FileInputStream("/curso/forcenedor.dat");
			ObjectInputStream lerObject = new ObjectInputStream(caminhoLeitura);
			fLeitura =  (List<Fornecedor>) lerObject.readObject();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		System.out.println("Dados da leitura");
		System.out.println(fLeitura);
	}

}
