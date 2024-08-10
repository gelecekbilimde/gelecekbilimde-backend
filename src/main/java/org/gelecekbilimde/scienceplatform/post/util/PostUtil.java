package org.gelecekbilimde.scienceplatform.post.util;

import lombok.experimental.UtilityClass;

import java.text.Normalizer;
import java.util.regex.Pattern;

@UtilityClass
public class PostUtil {

	public String slugging(String text) {
		String normalizedText = Normalizer.normalize(text, Normalizer.Form.NFD)
			.replaceAll("\\p{InCombiningDiacriticalMarks}+", "");

		Pattern pattern = Pattern.compile("[^\\p{Alnum}]+");
		String slug = pattern.matcher(normalizedText).replaceAll("-").toLowerCase();
		return slug.replaceAll("^-+|-+$", "");
	}

}
