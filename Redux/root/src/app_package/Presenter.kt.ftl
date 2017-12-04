package ${packageName}

import com.develop.zuzik.redux.core.extension.asConsumer
import com.develop.zuzik.redux.core.model.ReduxPresenter

class ${className}Presenter(private val model: ${className}.Model) :
		ReduxPresenter<${className}.View>(),
		${className}.Presenter {

	override fun onStart(view: ${className}.View) {
	<#if addStub>
		intent(model
				.property { state -> state.processing }
				.subscribe(view.displayProgress.asConsumer()))

		intent(view
				.onLoadData
				.subscribe(model.loadData.asConsumer()))
	</#if>
	}
}