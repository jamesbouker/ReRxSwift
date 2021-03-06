//  Copyright © 2017 Stefan van den Oord. All rights reserved.

import ReSwift

func mainReducer(action: Action, state: AppState?) -> AppState {
    return AppState(
        simpleTextField: simpleTextFieldReducer(action: action, state: state?.simpleTextField),
        steppingUp: steppingUpReducer(action: action, state: state?.steppingUp),
        tableAndCollection: tableAndCollectionReducer(action: action, state: state?.tableAndCollection)
    )
}
