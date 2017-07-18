.class public Landroid/net/wimax/WimaxHelper;
.super Ljava/lang/Object;
.source "WimaxHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WimaxHelper"

.field private static final WIMAX_CONTROLLER_CLASSNAME:Ljava/lang/String; = "com.htc.net.wimax.WimaxController"

.field private static final WIMAX_MANAGER_CLASSNAME:Ljava/lang/String; = "android.net.fourG.wimax.Wimax4GManager"

.field private static sGetWimaxStateMethodname:Ljava/lang/String;

.field private static sIsWimaxEnabledMethodname:Ljava/lang/String;

.field private static sSetWimaxEnabledMethodname:Ljava/lang/String;

.field private static sWimaxClassLoader:Ldalvik/system/DexClassLoader;

.field private static sWimaxManagerClassname:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createWimaxService(Landroid/content/Context;Landroid/os/Handler;)Ljava/lang/Object;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 84
    const/4 v2, 0x0

    .line 87
    .local v2, "controller":Ljava/lang/Object;
    :try_start_0
    invoke-static {p0}, Landroid/net/wimax/WimaxHelper;->getWimaxClassLoader(Landroid/content/Context;)Ldalvik/system/DexClassLoader;

    move-result-object v7

    .line 88
    .local v7, "wimaxClassLoader":Ldalvik/system/DexClassLoader;
    sget-object v8, Landroid/net/wimax/WimaxHelper;->sWimaxManagerClassname:Ljava/lang/String;

    const-string/jumbo v9, "com.htc.net.wimax.WimaxController"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 90
    const-string/jumbo v8, "WiMax"

    invoke-static {v8}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 91
    .local v1, "b":Landroid/os/IBinder;
    if-eqz v1, :cond_0

    .line 92
    const-string/jumbo v8, "com.htc.net.wimax.IWimaxController$Stub"

    invoke-virtual {v7, v8}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 93
    .local v5, "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v5, :cond_0

    .line 94
    const-string/jumbo v8, "asInterface"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Class;

    const-class v10, Landroid/os/IBinder;

    const/4 v11, 0x0

    aput-object v10, v9, v11

    invoke-virtual {v5, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 95
    .local v0, "asInterface":Ljava/lang/reflect/Method;
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v1, v8, v9

    const/4 v9, 0x0

    invoke-virtual {v0, v9, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 96
    .local v6, "wc":Ljava/lang/Object;
    if-eqz v6, :cond_0

    .line 97
    const-string/jumbo v8, "com.htc.net.wimax.WimaxController"

    invoke-virtual {v7, v8}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 98
    if-eqz v5, :cond_0

    .line 99
    invoke-virtual {v5}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v8

    const/4 v9, 0x1

    aget-object v3, v8, v9

    .line 100
    .local v3, "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v6, v8, v9

    const/4 v9, 0x1

    aput-object p1, v8, v9

    invoke-virtual {v3, v8}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 120
    .end local v0    # "asInterface":Ljava/lang/reflect/Method;
    .end local v1    # "b":Landroid/os/IBinder;
    .end local v2    # "controller":Ljava/lang/Object;
    .end local v3    # "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v5    # "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v6    # "wc":Ljava/lang/Object;
    .end local v7    # "wimaxClassLoader":Ldalvik/system/DexClassLoader;
    :cond_0
    :goto_0
    return-object v2

    .line 105
    .restart local v2    # "controller":Ljava/lang/Object;
    .restart local v7    # "wimaxClassLoader":Ldalvik/system/DexClassLoader;
    :cond_1
    sget-object v8, Landroid/net/wimax/WimaxHelper;->sWimaxManagerClassname:Ljava/lang/String;

    const-string/jumbo v9, "android.net.fourG.wimax.Wimax4GManager"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 110
    const-string/jumbo v8, "android.net.fourG.wimax.Wimax4GManager"

    invoke-virtual {v7, v8}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 111
    .restart local v5    # "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v5, :cond_0

    .line 112
    invoke-virtual {v5}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v8

    const/4 v9, 0x0

    aget-object v3, v8, v9

    .line 113
    .restart local v3    # "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v3, v8}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 116
    .end local v3    # "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v5    # "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v7    # "wimaxClassLoader":Ldalvik/system/DexClassLoader;
    :catch_0
    move-exception v4

    .line 117
    .local v4, "e":Ljava/lang/Exception;
    const-string/jumbo v8, "WimaxHelper"

    const-string/jumbo v9, "Unable to create WimaxController instance"

    invoke-static {v8, v9, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static getWimaxClassLoader(Landroid/content/Context;)Ldalvik/system/DexClassLoader;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 51
    invoke-static {p0}, Landroid/net/wimax/WimaxHelper;->isWimaxSupported(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 52
    sget-object v2, Landroid/net/wimax/WimaxHelper;->sWimaxClassLoader:Ldalvik/system/DexClassLoader;

    if-nez v2, :cond_1

    .line 53
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 54
    const v3, 0x10400bb

    .line 53
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Landroid/net/wimax/WimaxHelper;->sWimaxManagerClassname:Ljava/lang/String;

    .line 60
    sget-object v2, Landroid/net/wimax/WimaxHelper;->sWimaxManagerClassname:Ljava/lang/String;

    const-string/jumbo v3, "com.htc.net.wimax.WimaxController"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 61
    const-string/jumbo v2, "isWimaxEnabled"

    sput-object v2, Landroid/net/wimax/WimaxHelper;->sIsWimaxEnabledMethodname:Ljava/lang/String;

    .line 62
    const-string/jumbo v2, "setWimaxEnabled"

    sput-object v2, Landroid/net/wimax/WimaxHelper;->sSetWimaxEnabledMethodname:Ljava/lang/String;

    .line 63
    const-string/jumbo v2, "getWimaxState"

    sput-object v2, Landroid/net/wimax/WimaxHelper;->sGetWimaxStateMethodname:Ljava/lang/String;

    .line 70
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 71
    const v3, 0x10400b9

    .line 70
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 72
    .local v0, "wimaxJarLocation":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 73
    const v3, 0x10400ba

    .line 72
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 74
    .local v1, "wimaxLibLocation":Ljava/lang/String;
    new-instance v2, Ldalvik/system/DexClassLoader;

    .line 75
    new-instance v3, Landroid/content/ContextWrapper;

    invoke-direct {v3, p0}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3}, Landroid/content/ContextWrapper;->getCacheDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 76
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    .line 74
    invoke-direct {v2, v0, v3, v1, v4}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    sput-object v2, Landroid/net/wimax/WimaxHelper;->sWimaxClassLoader:Ldalvik/system/DexClassLoader;

    .line 78
    .end local v0    # "wimaxJarLocation":Ljava/lang/String;
    .end local v1    # "wimaxLibLocation":Ljava/lang/String;
    :cond_1
    sget-object v2, Landroid/net/wimax/WimaxHelper;->sWimaxClassLoader:Ldalvik/system/DexClassLoader;

    return-object v2

    .line 64
    :cond_2
    sget-object v2, Landroid/net/wimax/WimaxHelper;->sWimaxManagerClassname:Ljava/lang/String;

    const-string/jumbo v3, "android.net.fourG.wimax.Wimax4GManager"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 65
    const-string/jumbo v2, "is4GEnabled"

    sput-object v2, Landroid/net/wimax/WimaxHelper;->sIsWimaxEnabledMethodname:Ljava/lang/String;

    .line 66
    const-string/jumbo v2, "set4GEnabled"

    sput-object v2, Landroid/net/wimax/WimaxHelper;->sSetWimaxEnabledMethodname:Ljava/lang/String;

    .line 67
    const-string/jumbo v2, "get4GState"

    sput-object v2, Landroid/net/wimax/WimaxHelper;->sGetWimaxStateMethodname:Ljava/lang/String;

    goto :goto_0

    .line 80
    :cond_3
    return-object v3
.end method

.method private static getWimaxInfo(Landroid/content/Context;)Ljava/lang/Object;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 178
    const/4 v2, 0x0

    .line 180
    .local v2, "wimaxInfo":Ljava/lang/Object;
    :try_start_0
    const-string/jumbo v4, "WiMax"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 181
    .local v3, "wimaxService":Ljava/lang/Object;
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string/jumbo v5, "getConnectionInfo"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 182
    .local v1, "getConnectionInfo":Ljava/lang/reflect/Method;
    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 186
    .end local v1    # "getConnectionInfo":Ljava/lang/reflect/Method;
    .end local v2    # "wimaxInfo":Ljava/lang/Object;
    .end local v3    # "wimaxService":Ljava/lang/Object;
    :goto_0
    return-object v2

    .line 183
    .restart local v2    # "wimaxInfo":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 184
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "WimaxHelper"

    const-string/jumbo v5, "Unable to get a WimaxInfo object!"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static getWimaxState(Landroid/content/Context;)I
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 151
    const/4 v2, 0x0

    .line 153
    .local v2, "ret":I
    :try_start_0
    const-string/jumbo v4, "WiMax"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 154
    .local v3, "wimaxService":Ljava/lang/Object;
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    sget-object v5, Landroid/net/wimax/WimaxHelper;->sGetWimaxStateMethodname:Ljava/lang/String;

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 155
    .local v1, "m":Ljava/lang/reflect/Method;
    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 159
    .end local v1    # "m":Ljava/lang/reflect/Method;
    .end local v3    # "wimaxService":Ljava/lang/Object;
    :goto_0
    return v2

    .line 156
    :catch_0
    move-exception v0

    .line 157
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "WimaxHelper"

    const-string/jumbo v5, "Unable to get WiMAX state!"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static isWimaxEnabled(Landroid/content/Context;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 124
    const/4 v2, 0x0

    .line 126
    .local v2, "ret":Z
    :try_start_0
    const-string/jumbo v4, "WiMax"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 127
    .local v3, "wimaxService":Ljava/lang/Object;
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    sget-object v5, Landroid/net/wimax/WimaxHelper;->sIsWimaxEnabledMethodname:Ljava/lang/String;

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 128
    .local v1, "m":Ljava/lang/reflect/Method;
    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 132
    .end local v1    # "m":Ljava/lang/reflect/Method;
    .end local v2    # "ret":Z
    .end local v3    # "wimaxService":Ljava/lang/Object;
    :goto_0
    return v2

    .line 129
    .restart local v2    # "ret":Z
    :catch_0
    move-exception v0

    .line 130
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "WimaxHelper"

    const-string/jumbo v5, "Unable to get WiMAX enabled state!"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static isWimaxSupported(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 46
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 47
    const v1, 0x1120076

    .line 46
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public static setWimaxEnabled(Landroid/content/Context;Z)Z
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enabled"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 136
    const/4 v2, 0x0

    .line 138
    .local v2, "ret":Z
    :try_start_0
    const-string/jumbo v4, "WiMax"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 139
    .local v3, "wimaxService":Ljava/lang/Object;
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    sget-object v7, Landroid/net/wimax/WimaxHelper;->sSetWimaxEnabledMethodname:Ljava/lang/String;

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Class;

    sget-object v9, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v10, 0x0

    aput-object v9, v8, v10

    invoke-virtual {v4, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 140
    .local v1, "m":Ljava/lang/reflect/Method;
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v4, v8

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 141
    .local v2, "ret":Z
    if-eqz v2, :cond_0

    .line 142
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 143
    const-string/jumbo v8, "wimax_on"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_1

    move v4, v5

    .line 142
    :goto_0
    invoke-static {v7, v8, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    .end local v1    # "m":Ljava/lang/reflect/Method;
    .end local v2    # "ret":Z
    .end local v3    # "wimaxService":Ljava/lang/Object;
    :cond_0
    :goto_1
    return v2

    .restart local v1    # "m":Ljava/lang/reflect/Method;
    .restart local v2    # "ret":Z
    .restart local v3    # "wimaxService":Ljava/lang/Object;
    :cond_1
    move v4, v6

    .line 143
    goto :goto_0

    .line 144
    .end local v1    # "m":Ljava/lang/reflect/Method;
    .end local v2    # "ret":Z
    .end local v3    # "wimaxService":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 145
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "WimaxHelper"

    const-string/jumbo v5, "Unable to set WiMAX state!"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public static wimaxRescan(Landroid/content/Context;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 163
    const/4 v1, 0x0

    .line 165
    .local v1, "ret":Z
    :try_start_0
    const-string/jumbo v4, "WiMax"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 166
    .local v3, "wimaxService":Ljava/lang/Object;
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string/jumbo v5, "wimaxRescan"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 167
    .local v2, "wimaxRescan":Ljava/lang/reflect/Method;
    if-eqz v2, :cond_0

    .line 168
    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    const/4 v1, 0x1

    .line 174
    .end local v2    # "wimaxRescan":Ljava/lang/reflect/Method;
    .end local v3    # "wimaxService":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v1

    .line 171
    :catch_0
    move-exception v0

    .line 172
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "WimaxHelper"

    const-string/jumbo v5, "Unable to perform WiMAX rescan!"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
