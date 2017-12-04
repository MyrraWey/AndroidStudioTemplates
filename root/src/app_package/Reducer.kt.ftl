package ${packageName}

import com.develop.zuzik.redux.core.store.Action
import com.develop.zuzik.redux.core.store.Reducer

class ${className}Reducer : Reducer<${className}.State> {

	override fun reduce(oldState: ${className}.State, action: Action): ${className}.State =
			(action as? ${className}Action)?.let {
				reduce(oldState, it)
			} ?: oldState

	private fun reduce(oldState: ${className}.State, action: ${className}Action): ${className}.State =
			when (action) {
			<#if addStub>
				is ${className}Action.LoadData -> oldState.copy(processing = true)
			</#if>
			}
}