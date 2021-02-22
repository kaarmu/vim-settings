
cfg_home = $(XDG_CONFIG_HOME)
lcl_home = $(XDG_DATA_HOME)

ignores := $(shell cat dotignore.txt)
ignores := $(addsuffix /,${ignores})
cfg_ign := $(addprefix ${cfg_home}/,${ignores})
lcl_ign := $(addprefix ${lcl_home}/,${ignores})

configs := $(shell ls -d ${cfg_home}/*/)
configs := $(filter-out ${cfg_ign},${configs})

locals := $(shell ls -d ${lcl_home}/*/)
locals := $(filter-out ${lcl_ign},${locals})

repo_configs := $(shell ls -d $(shell pwd)/config/*/)

list:
	$(info ignores...)
	$(foreach ign,${ignores},$(info ${ign}))
	$(info configs...)
	$(foreach app,${configs},$(info ./config/$(app:${cfg_home}/%=%)))
	$(info locals...)
	$(foreach app,${locals},$(info ./local/$(app:${lcl_home}/%=%)))

load-repo: load-configs load-locals

load-locals:
	$(info I will ignore...)
	$(foreach ign,${lcl_ign},$(info ${ign}))
	$(info and then load repo with...)
	$(foreach app,${locals},$(info ./local/$(app:${lcl_home}/%=%)))
	$(foreach app,${locals}, \
		$(shell cp -r ${app} $(shell pwd)/local/$(app:${lcl_home}/%=%)))

load-configs:
	$(info I will ignore...)
	$(foreach ign,${cfg_ign},$(info ${ign}))
	$(info and then load repo with...)
	$(foreach app,${configs},$(info ./config/$(app:${cfg_home}/%=%)))
	$(foreach app,${configs}, \
		$(shell cp -r ${app} $(shell pwd)/config/$(app:${cfg_home}/%=%)))

install:
	$(info I will install...)
	$(foreach repoapp,${repo_configs},$(info ./$(repoapp:$(shell pwd)/%=%)))
	$(foreach repoapp,${repo_configs}, \
		$(shell cp -r ${repoapp} \
			$(repoapp:$(shell pwd)/config/%=~/.config/%) \
		) \
	)

