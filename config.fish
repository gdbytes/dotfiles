# Execute docker commands without 'leaving' the current directory.
function dc
	set currentDir = $PWD;
	cd ~/Docker/docker;
	docker-compose $argv;
	cd $currentDir;
end
