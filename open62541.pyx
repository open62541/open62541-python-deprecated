cimport copen62541


cdef class Server:
    #cdef copen62541.UA_ServerNetworkLayer _c_nl
    cdef copen62541.UA_Boolean _c_running

    def run(self, int port=4840):

        cdef copen62541.UA_ServerConfig* c_conf
        cdef copen62541.UA_Server* c_server

        c_conf = copen62541.UA_ServerConfig_new_default()
        c_server = copen62541.UA_Server_new(c_conf)
        self._c_running = True
        with nogil:
            status = copen62541.UA_Server_run(c_server, &self._c_running)
        copen62541.UA_Server_delete(c_server)
        copen62541.UA_ServerConfig_delete(c_conf)
        return status

    def stop(self):
        self._c_running = False


