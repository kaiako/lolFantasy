package object

import org.springframework.dao.DataIntegrityViolationException

class PointSettingController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [pointSettingInstanceList: PointSetting.list(params), pointSettingInstanceTotal: PointSetting.count()]
    }

    def create() {
        [pointSettingInstance: new PointSetting(params)]
    }

    def save() {
        def pointSettingInstance = new PointSetting(params)
        if (!pointSettingInstance.save(flush: true)) {
            render(view: "create", model: [pointSettingInstance: pointSettingInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'pointSetting.label', default: 'PointSetting'), pointSettingInstance.id])
        redirect(action: "show", id: pointSettingInstance.id)
    }

    def show(Long id) {
        def pointSettingInstance = PointSetting.get(id)
        if (!pointSettingInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'pointSetting.label', default: 'PointSetting'), id])
            redirect(action: "list")
            return
        }

        [pointSettingInstance: pointSettingInstance]
    }

    def edit(Long id) {
        def pointSettingInstance = PointSetting.get(id)
        if (!pointSettingInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'pointSetting.label', default: 'PointSetting'), id])
            redirect(action: "list")
            return
        }

        [pointSettingInstance: pointSettingInstance]
    }

    def update(Long id, Long version) {
        def pointSettingInstance = PointSetting.get(id)
        if (!pointSettingInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'pointSetting.label', default: 'PointSetting'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (pointSettingInstance.version > version) {
                pointSettingInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'pointSetting.label', default: 'PointSetting')] as Object[],
                          "Another user has updated this PointSetting while you were editing")
                render(view: "edit", model: [pointSettingInstance: pointSettingInstance])
                return
            }
        }

        pointSettingInstance.properties = params

        if (!pointSettingInstance.save(flush: true)) {
            render(view: "edit", model: [pointSettingInstance: pointSettingInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'pointSetting.label', default: 'PointSetting'), pointSettingInstance.id])
        redirect(action: "show", id: pointSettingInstance.id)
    }

    def delete(Long id) {
        def pointSettingInstance = PointSetting.get(id)
        if (!pointSettingInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'pointSetting.label', default: 'PointSetting'), id])
            redirect(action: "list")
            return
        }

        try {
            pointSettingInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'pointSetting.label', default: 'PointSetting'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'pointSetting.label', default: 'PointSetting'), id])
            redirect(action: "show", id: id)
        }
    }
}
