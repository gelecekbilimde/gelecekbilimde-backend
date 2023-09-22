package org.gelecekbilimde.scienceplatform.common;

import jakarta.persistence.criteria.Predicate;
import lombok.Builder;
import lombok.Getter;
import org.springframework.data.jpa.domain.Specification;


import java.util.Map;

@Getter
@Builder
public class BaseSpecification {

	private BaseSpecification() {
		throw new UnsupportedOperationException("This is a utility class and cannot be instantiated");
	}

	@SuppressWarnings("unused")
	public static class Builder<C> {

		public Specification<C> and(final Map<String, Object> filter) {
			final Predicate[] predicates = new Predicate[filter.size()];
			final String[] names = filter.keySet().toArray(new String[0]);

			return ((root, query, criteriaBuilder) -> {

				for (int count = 0; count < filter.size(); count++) {

					final String name = names[count];
					final String value = filter.get(name).toString();

					predicates[count] = criteriaBuilder.equal(root.get(name), value);
				}
				return criteriaBuilder.and(predicates);
			});
		}
	}
}
