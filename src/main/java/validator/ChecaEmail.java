package validator;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.validation.ConstraintValidator;
import javax.validation.ConstraintValidatorContext;

public abstract class ChecaEmail implements ConstraintValidator<ValidadorDeEmail, String> {

	public void initialize(ValidadorDeEmail validador) {

	}

	public boolean isValid(String valor, ConstraintValidatorContext constraintContext) {
		if (valor != null) {
			String regex = "^[_A-Za-z0-9-\\+]+(\\.[_A-Za-z0-9-]+)*@javamagazine.com.br$";
			Pattern padrao = Pattern.compile(regex);
			Matcher matcher = padrao.matcher(valor);
			
			return matcher.matches();
		} else {
			return true;
		}

	}

}