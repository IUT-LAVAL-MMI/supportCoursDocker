import { BasicToDoList } from './BasicToDoList';
import { EnhancedToDoList } from './EnhancedToDoList';

/**
 * Gestionnaire principale de todolists.
 */
export class ToDoListManager {
  _sqlList;

  _mongoList;

  _listNames = {
    sqlList: 'Liste Basique (SQL)',
    mongoList: 'Liste Étendue (MongoDB)',
  }

  constructor() {
    this._sqlList = new BasicToDoList(`${process.env.API_EP_URI}/sqltodolist/:id`);
    this._mongoList = new EnhancedToDoList(`${process.env.API_EP_URI}/mongotodolist/:id`);
  }

  get sqlList() {
    return this._sqlList;
  }

  get mongoList() {
    return this._mongoList;
  }

  getListName(listname) {
    return this._listNames[listname] || 'Liste inconnue';
  }
}

export default ToDoListManager;
