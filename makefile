

ignores := $(shell cat dotignore.txt)
ignores := $(addprefix ${XDG_CONFIG_HOME}/,${ignores})
ignores := $(addsuffix /,${ignores})

configs := $(shell ls -d ${XDG_CONFIG_HOME}/*/)
configs := $(filter-out ${ignores},${configs})

repo_configs := $(shell ls -d $(shell pwd)/config/*/)

load-repo: load-config load-local

load-config:
	$(info I will ignore...)
	$(foreach ign,${ignores},$(info ${ign}))
	$(info and then load repo with...)
	$(foreach app,${configs},$(info ./config/$(app:${XDG_CONFIG_HOME}/%=%)))
	$(foreach app,${configs}, \
		$(shell cp -rf ${app} $(shell pwd)/config/$(app:${XDG_CONFIG_HOME}/%=%)) \
	)



install:
	$(info I will install...)
	$(foreach repoapp,${repo_configs},$(info ./$(repoapp:$(shell pwd)/%=%)))
	$(foreach repoapp,${repo_configs}, \
		$(shell cp -rf ${repoapp} \
			$(addprefix ${XDG_CONFIG_HOME}/,$(repoapp:$(shell pwd)/config/%=%)) \
		) \
	)

