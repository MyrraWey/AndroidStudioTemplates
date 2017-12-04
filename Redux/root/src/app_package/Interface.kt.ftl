package ${packageName}

import com.develop.zuzik.redux.core.model.Redux
import io.reactivex.Observable
import io.reactivex.Observer

interface ${className} {

	data class State(<#if addStub>val processing: Boolean</#if>)

	interface Model : Redux.Model<State> {
	<#if addStub>
		val loadData: Observer<Unit>
	</#if>
	}

	interface View : Redux.View {
	<#if addStub>
		val displayProgress: Observer<Boolean>

		val onLoadData: Observable<Unit>
	</#if>
	}

	interface Presenter : Redux.Presenter<View>
}