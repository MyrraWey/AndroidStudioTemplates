package ${packageName}

import com.develop.zuzik.redux.core.model.ReduxModel
import com.develop.zuzik.redux.core.store.Action
import io.reactivex.Scheduler
import io.reactivex.schedulers.Schedulers
import io.reactivex.subjects.PublishSubject

class ${className}Model(defaultState: ${className}.State,
				   scheduler: Scheduler = Schedulers.computation()) :
		ReduxModel<${className}.State>(defaultState, scheduler),
		${className}.Model {
	override val loadData: PublishSubject<Unit> = PublishSubject.create()

	init {
		addAction(loadData
				.map<Action> { ${className}Action.LoadData() })

		addReducer(${className}Reducer())
	}
}