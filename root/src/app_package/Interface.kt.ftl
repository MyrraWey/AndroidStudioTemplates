package ${packageName}

import com.develop.zuzik.redux.core.model.Redux
import io.reactivex.Observable
import io.reactivex.Observer

interface ${className} {

	data class State(val processing: Boolean)

	interface Model : Redux.Model<State> {
		val loadData: Observer<Unit>
	}

	interface View : Redux.View {
		val displayProgress: Observer<Boolean>

		val onLoadData: Observable<Unit>
	}

	interface Presenter : Redux.Presenter<View>
}