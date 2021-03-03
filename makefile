
NULL :=
TWO := $(NULL)  $(NULL)
TAB := $(NULL)    $(NULL)
config_home := ~/.config
local_home := ~/.local/share

includes := $(addsuffix /,$(shell cat $(shell pwd)/include))
configs := $(addsuffix /,$(shell ls $(config_home)))
locals := $(addsuffix /,$(shell ls $(local_home)))
i_configs := $(addsuffix /,$(shell ls $(shell pwd)/config))
i_locals := $(addsuffix /,$(shell ls $(shell pwd)/local))

ok_configs := $(filter $(configs),$(includes))
ok_locals := $(filter $(locals),$(includes))

list:
	$(info Found these matching configs:)
	$(info $(ok_configs))
	$(info Found these matching locals:)
	$(info $(ok_locals))

load-repo: load-configs load-locals

load-locals:
	$(info I will load following locals into repo:)
	$(foreach app,$(ok_locals),\
		$(info $(TWO) $(local_home)/$(app) -> $(shell pwd)/local/$(app)))
	$(foreach app,$(ok_locals),\
		$(shell sudo cp -r $(local_home)/$(app) $(shell pwd)/local/))

load-configs:
	$(info I will load following configs into repo:)
	$(foreach app,$(ok_configs),\
		$(info $(TWO) $(config_home)/$(app) -> $(shell pwd)/config/$(app)))
	$(foreach app,$(ok_configs),\
		$(shell sudo cp -r $(config_home)/$(app) $(shell pwd)/config/))

install:
	$(info I will do the following installations:)
	$(foreach app,$(i_configs),\
		$(info $(TWO) $(shell pwd)/config/$(app) -> $(config_home)/$(app)))
	$(foreach app,$(i_locals),\
		$(info $(TWO) $(shell pwd)/local/$(app) -> $(local_home)/$(app)))
	$(foreach app,$(i_configs),\
		$(shell cp -r $(shell pwd)/config/$(app) $(config_home)/))
	$(foreach app,$(i_locals),\
		$(shell cp -r $(shell pwd)/local/$(app) $(local_home)/))

