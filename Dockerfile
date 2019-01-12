FROM itzg/minecraft-server

LABEL AUTHOR="Rupert Benbrook <rupert@benbrook.org.uk>"

ENV TYPE=Spigot \
    VERSION=1.12.2 \
    MODE=creative \
    MOTD="Welcome to the Benbrook Minecraft server!" \
    PVP=false \
    DIFFICULTY=peaceful \
    LEVEL_TYPE=FLAT \
    OPS=dizzyedge \
    INIT_MEMORY=512M \
    MEMORY=512M \
    MAX_MEMORY=2G

ADD https://myles.us/ViaVersion/latest.jar /plugins/ViaVersion.jar
ADD https://dev.bukkit.org/projects/multiverse-core/files/latest /plugins/Multiverse-Core.jar
ADD https://dev.bukkit.org/projects/multiverse-portals/files/latest /plugins/Multiverse-Portals.jar
ADD https://dev.bukkit.org/projects/worldedit/files/latest /plugins/WorldEdit.jar
ADD https://empcraft.com/fawe/latest.php?bukkit /plugins/FastAsyncWorldEdit.jar
ADD https://dev.bukkit.org/projects/worldguard/files/latest /plugins/WorldGuard.jar
ADD https://dev.bukkit.org/projects/citizens/files/latest /plugins/Citizens.jar

EXPOSE 25565
