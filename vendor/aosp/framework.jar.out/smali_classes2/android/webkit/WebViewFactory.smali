.class public final Landroid/webkit/WebViewFactory;
.super Ljava/lang/Object;
.source "WebViewFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/WebViewFactory$RelroFileCreator;
    }
.end annotation


# static fields
.field private static final CHROMIUM_WEBVIEW_DEFAULT_VMSIZE_BYTES:J = 0x6400000L

.field private static final CHROMIUM_WEBVIEW_FACTORY:Ljava/lang/String; = "com.android.webview.chromium.WebViewChromiumFactoryProvider"

.field private static final CHROMIUM_WEBVIEW_NATIVE_RELRO_32:Ljava/lang/String; = "/data/misc/shared_relro/libwebviewchromium32.relro"

.field private static final CHROMIUM_WEBVIEW_NATIVE_RELRO_64:Ljava/lang/String; = "/data/misc/shared_relro/libwebviewchromium64.relro"

.field public static final CHROMIUM_WEBVIEW_VMSIZE_SIZE_PROPERTY:Ljava/lang/String; = "persist.sys.webview.vmsize"

.field private static final DEBUG:Z = false

.field private static final LOGTAG:Ljava/lang/String; = "WebViewFactory"

.field private static final NULL_WEBVIEW_FACTORY:Ljava/lang/String; = "com.android.webview.nullwebview.NullWebViewFactoryProvider"

.field private static sAddressSpaceReserved:Z

.field private static sPackageInfo:Landroid/content/pm/PackageInfo;

.field private static sProviderInstance:Landroid/webkit/WebViewFactoryProvider;

.field private static final sProviderLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 75
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/webkit/WebViewFactory;->sProviderLock:Ljava/lang/Object;

    .line 76
    const/4 v0, 0x0

    sput-boolean v0, Landroid/webkit/WebViewFactory;->sAddressSpaceReserved:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 353
    return-void
.end method

.method static synthetic access$000()Landroid/webkit/IWebViewUpdateService;
    .locals 1

    .prologue
    .line 51
    invoke-static {}, Landroid/webkit/WebViewFactory;->getUpdateService()Landroid/webkit/IWebViewUpdateService;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 51
    sget-boolean v0, Landroid/webkit/WebViewFactory;->sAddressSpaceReserved:Z

    return v0
.end method

.method static synthetic access$200(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 51
    invoke-static {p0, p1, p2, p3}, Landroid/webkit/WebViewFactory;->nativeCreateRelroFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static createRelroFile(Z[Ljava/lang/String;)V
    .locals 9
    .param p0, "is64Bit"    # Z
    .param p1, "nativeLibraryPaths"    # [Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 320
    if-eqz p0, :cond_2

    sget-object v0, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    aget-object v4, v0, v1

    .line 324
    .local v4, "abi":Ljava/lang/String;
    :goto_0
    new-instance v6, Landroid/webkit/WebViewFactory$1;

    invoke-direct {v6, v4, p0}, Landroid/webkit/WebViewFactory$1;-><init>(Ljava/lang/String;Z)V

    .line 337
    .local v6, "crashHandler":Ljava/lang/Runnable;
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :try_start_0
    aget-object v0, p1, v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    aget-object v0, p1, v0

    if-nez v0, :cond_3

    .line 339
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Native library paths to the WebView RelRo process must not be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 346
    :catch_0
    move-exception v8

    .line 348
    .local v8, "t":Ljava/lang/Throwable;
    const-string v0, "WebViewFactory"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error starting relro file creator for abi "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 349
    invoke-interface {v6}, Ljava/lang/Runnable;->run()V

    .line 351
    .end local v8    # "t":Ljava/lang/Throwable;
    :cond_1
    return-void

    .line 320
    .end local v4    # "abi":Ljava/lang/String;
    .end local v6    # "crashHandler":Ljava/lang/Runnable;
    :cond_2
    sget-object v0, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    aget-object v4, v0, v1

    goto :goto_0

    .line 342
    .restart local v4    # "abi":Ljava/lang/String;
    .restart local v6    # "crashHandler":Ljava/lang/Runnable;
    :cond_3
    :try_start_1
    const-class v0, Landroid/app/ActivityManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    const-class v1, Landroid/webkit/WebViewFactory$RelroFileCreator;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WebViewLoader-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0x40d

    move-object v2, p1

    invoke-virtual/range {v0 .. v6}, Landroid/app/ActivityManagerInternal;->startIsolatedProcess(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)I

    move-result v7

    .line 345
    .local v7, "pid":I
    if-gtz v7, :cond_1

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Failed to start the relro file creator process"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
.end method

.method private static getFactoryClass()Ljava/lang/Class;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<",
            "Landroid/webkit/WebViewFactoryProvider;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 149
    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    move-result-object v2

    .line 152
    .local v2, "initialApplication":Landroid/app/Application;
    :try_start_0
    invoke-static {}, Landroid/webkit/WebViewFactory;->getWebViewPackageName()Ljava/lang/String;

    move-result-object v3

    .line 153
    .local v3, "packageName":Ljava/lang/String;
    invoke-virtual {v2}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v3, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    sput-object v5, Landroid/webkit/WebViewFactory;->sPackageInfo:Landroid/content/pm/PackageInfo;

    .line 154
    const-string v5, "WebViewFactory"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Loading "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " version "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Landroid/webkit/WebViewFactory;->sPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v7, v7, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " (code "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Landroid/webkit/WebViewFactory;->sPackageInfo:Landroid/content/pm/PackageInfo;

    iget v7, v7, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    const/4 v5, 0x3

    invoke-virtual {v2, v3, v5}, Landroid/app/Application;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v4

    .line 160
    .local v4, "webViewContext":Landroid/content/Context;
    invoke-virtual {v2}, Landroid/app/Application;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/content/res/AssetManager;->addAssetPath(Ljava/lang/String;)I

    .line 162
    invoke-virtual {v4}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 163
    .local v0, "clazzLoader":Ljava/lang/ClassLoader;
    const-wide/16 v6, 0x10

    const-string v5, "Class.forName()"

    invoke-static {v6, v7, v5}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    :try_start_1
    const-string v5, "com.android.webview.chromium.WebViewChromiumFactoryProvider"

    const/4 v6, 0x1

    invoke-static {v5, v6, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v5

    .line 168
    const-wide/16 v6, 0x10

    :try_start_2
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 176
    .end local v0    # "clazzLoader":Ljava/lang/ClassLoader;
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v4    # "webViewContext":Landroid/content/Context;
    :goto_0
    return-object v5

    .line 168
    .restart local v0    # "clazzLoader":Ljava/lang/ClassLoader;
    .restart local v3    # "packageName":Ljava/lang/String;
    .restart local v4    # "webViewContext":Landroid/content/Context;
    :catchall_0
    move-exception v5

    const-wide/16 v6, 0x10

    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    throw v5
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    .line 170
    .end local v0    # "clazzLoader":Ljava/lang/ClassLoader;
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v4    # "webViewContext":Landroid/content/Context;
    :catch_0
    move-exception v1

    .line 176
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_3
    const-string v5, "com.android.webview.nullwebview.NullWebViewFactoryProvider"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v5

    goto :goto_0

    .line 177
    :catch_1
    move-exception v5

    .line 180
    const-string v5, "WebViewFactory"

    const-string v6, "Chromium WebView package does not exist"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 181
    new-instance v5, Landroid/util/AndroidRuntimeException;

    invoke-direct {v5, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/Exception;)V

    throw v5
.end method

.method public static getLoadedPackageInfo()Landroid/content/pm/PackageInfo;
    .locals 1

    .prologue
    .line 92
    sget-object v0, Landroid/webkit/WebViewFactory;->sPackageInfo:Landroid/content/pm/PackageInfo;

    return-object v0
.end method

.method static getProvider()Landroid/webkit/WebViewFactoryProvider;
    .locals 9

    .prologue
    .line 96
    sget-object v5, Landroid/webkit/WebViewFactory;->sProviderLock:Ljava/lang/Object;

    monitor-enter v5

    .line 99
    :try_start_0
    sget-object v4, Landroid/webkit/WebViewFactory;->sProviderInstance:Landroid/webkit/WebViewFactoryProvider;

    if-eqz v4, :cond_0

    sget-object v4, Landroid/webkit/WebViewFactory;->sProviderInstance:Landroid/webkit/WebViewFactoryProvider;

    monitor-exit v5

    .line 143
    .local v1, "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    .local v2, "providerClass":Ljava/lang/Class;, "Ljava/lang/Class<Landroid/webkit/WebViewFactoryProvider;>;"
    .local v3, "uid":I
    :goto_0
    return-object v4

    .line 101
    .end local v1    # "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    .end local v2    # "providerClass":Ljava/lang/Class;, "Ljava/lang/Class<Landroid/webkit/WebViewFactoryProvider;>;"
    .end local v3    # "uid":I
    :cond_0
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    .line 102
    .restart local v3    # "uid":I
    if-eqz v3, :cond_1

    const/16 v4, 0x3e8

    if-ne v3, v4, :cond_2

    .line 103
    :cond_1
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    const-string v6, "For security reasons, WebView is not allowed in privileged processes"

    invoke-direct {v4, v6}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 145
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 107
    :cond_2
    const-wide/16 v6, 0x10

    :try_start_1
    const-string v4, "WebViewFactory.getProvider()"

    invoke-static {v6, v7, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 109
    const-wide/16 v6, 0x10

    :try_start_2
    const-string v4, "WebViewFactory.loadNativeLibrary()"

    invoke-static {v6, v7, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 110
    invoke-static {}, Landroid/webkit/WebViewFactory;->loadNativeLibrary()V

    .line 111
    const-wide/16 v6, 0x10

    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 114
    const-wide/16 v6, 0x10

    const-string v4, "WebViewFactory.getFactoryClass()"

    invoke-static {v6, v7, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 116
    :try_start_3
    invoke-static {}, Landroid/webkit/WebViewFactory;->getFactoryClass()Ljava/lang/Class;
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v2

    .line 121
    .restart local v2    # "providerClass":Ljava/lang/Class;, "Ljava/lang/Class<Landroid/webkit/WebViewFactoryProvider;>;"
    const-wide/16 v6, 0x10

    :try_start_4
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 124
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v1

    .line 125
    .restart local v1    # "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    const-wide/16 v6, 0x10

    const-string v4, "providerClass.newInstance()"

    invoke-static {v6, v7, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 128
    const/4 v4, 0x1

    :try_start_5
    new-array v4, v4, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Landroid/webkit/WebViewDelegate;

    aput-object v7, v4, v6

    invoke-virtual {v2, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    new-instance v8, Landroid/webkit/WebViewDelegate;

    invoke-direct {v8}, Landroid/webkit/WebViewDelegate;-><init>()V

    aput-object v8, v6, v7

    invoke-virtual {v4, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/webkit/WebViewFactoryProvider;

    sput-object v4, Landroid/webkit/WebViewFactory;->sProviderInstance:Landroid/webkit/WebViewFactoryProvider;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 134
    :goto_1
    :try_start_6
    sget-object v4, Landroid/webkit/WebViewFactory;->sProviderInstance:Landroid/webkit/WebViewFactoryProvider;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 139
    const-wide/16 v6, 0x10

    :try_start_7
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 140
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 143
    const-wide/16 v6, 0x10

    :try_start_8
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    monitor-exit v5
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_0

    .line 117
    .end local v1    # "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    .end local v2    # "providerClass":Ljava/lang/Class;, "Ljava/lang/Class<Landroid/webkit/WebViewFactoryProvider;>;"
    :catch_0
    move-exception v0

    .line 118
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    :try_start_9
    const-string v4, "WebViewFactory"

    const-string v6, "error loading provider"

    invoke-static {v4, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 119
    new-instance v4, Landroid/util/AndroidRuntimeException;

    invoke-direct {v4, v0}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/Exception;)V

    throw v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 121
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :catchall_1
    move-exception v4

    const-wide/16 v6, 0x10

    :try_start_a
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    throw v4
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 143
    :catchall_2
    move-exception v4

    const-wide/16 v6, 0x10

    :try_start_b
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    throw v4
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 130
    .restart local v1    # "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    .restart local v2    # "providerClass":Ljava/lang/Class;, "Ljava/lang/Class<Landroid/webkit/WebViewFactoryProvider;>;"
    :catch_1
    move-exception v0

    .line 131
    .local v0, "e":Ljava/lang/Exception;
    :try_start_c
    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/webkit/WebViewFactoryProvider;

    sput-object v4, Landroid/webkit/WebViewFactory;->sProviderInstance:Landroid/webkit/WebViewFactoryProvider;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_2
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    goto :goto_1

    .line 135
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v0

    .line 136
    .restart local v0    # "e":Ljava/lang/Exception;
    :try_start_d
    const-string v4, "WebViewFactory"

    const-string v6, "error instantiating provider"

    invoke-static {v4, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 137
    new-instance v4, Landroid/util/AndroidRuntimeException;

    invoke-direct {v4, v0}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/Exception;)V

    throw v4
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    .line 139
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_3
    move-exception v4

    const-wide/16 v6, 0x10

    :try_start_e
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 140
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw v4
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2
.end method

.method private static getUpdateService()Landroid/webkit/IWebViewUpdateService;
    .locals 1

    .prologue
    .line 420
    const-string v0, "webviewupdate"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/IWebViewUpdateService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/webkit/IWebViewUpdateService;

    move-result-object v0

    return-object v0
.end method

.method private static getWebViewNativeLibraryPaths()[Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 286
    const-string v0, "libwebviewchromium.so"

    .line 288
    .local v0, "NATIVE_LIB_FILE_NAME":Ljava/lang/String;
    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 289
    .local v4, "pm":Landroid/content/pm/PackageManager;
    invoke-static {}, Landroid/webkit/WebViewFactory;->getWebViewPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 293
    .local v1, "ai":Landroid/content/pm/ApplicationInfo;
    iget-object v6, v1, Landroid/content/pm/ApplicationInfo;->primaryCpuAbi:Ljava/lang/String;

    invoke-static {v6}, Ldalvik/system/VMRuntime;->is64BitAbi(Ljava/lang/String;)Z

    move-result v5

    .line 294
    .local v5, "primaryArchIs64bit":Z
    iget-object v6, v1, Landroid/content/pm/ApplicationInfo;->secondaryCpuAbi:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 296
    if-eqz v5, :cond_2

    .line 298
    iget-object v3, v1, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    .line 299
    .local v3, "path64":Ljava/lang/String;
    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->secondaryNativeLibraryDir:Ljava/lang/String;

    .line 314
    .local v2, "path32":Ljava/lang/String;
    :goto_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/libwebviewchromium.so"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 315
    :cond_0
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/libwebviewchromium.so"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 316
    :cond_1
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    aput-object v2, v6, v8

    const/4 v7, 0x1

    aput-object v3, v6, v7

    return-object v6

    .line 302
    .end local v2    # "path32":Ljava/lang/String;
    .end local v3    # "path64":Ljava/lang/String;
    :cond_2
    iget-object v3, v1, Landroid/content/pm/ApplicationInfo;->secondaryNativeLibraryDir:Ljava/lang/String;

    .line 303
    .restart local v3    # "path64":Ljava/lang/String;
    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    .restart local v2    # "path32":Ljava/lang/String;
    goto :goto_0

    .line 305
    .end local v2    # "path32":Ljava/lang/String;
    .end local v3    # "path64":Ljava/lang/String;
    :cond_3
    if-eqz v5, :cond_4

    .line 307
    iget-object v3, v1, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    .line 308
    .restart local v3    # "path64":Ljava/lang/String;
    const-string v2, ""

    .restart local v2    # "path32":Ljava/lang/String;
    goto :goto_0

    .line 311
    .end local v2    # "path32":Ljava/lang/String;
    .end local v3    # "path64":Ljava/lang/String;
    :cond_4
    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    .line 312
    .restart local v2    # "path32":Ljava/lang/String;
    const-string v3, ""

    .restart local v3    # "path64":Ljava/lang/String;
    goto :goto_0
.end method

.method public static getWebViewPackageName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 80
    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    move-result-object v0

    .line 81
    .local v0, "initialApp":Landroid/app/Application;
    const v2, 0x1040113

    invoke-virtual {v0, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 84
    .local v1, "pkg":Ljava/lang/String;
    invoke-static {v0, v1}, Landroid/webkit/WebViewFactory;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 87
    .end local v1    # "pkg":Ljava/lang/String;
    :goto_0
    return-object v1

    .restart local v1    # "pkg":Ljava/lang/String;
    :cond_0
    const v2, 0x1040112

    invoke-virtual {v0, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private static isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 425
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 427
    :cond_0
    :goto_0
    return v1

    .line 426
    :catch_0
    move-exception v0

    .line 427
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method

.method private static loadNativeLibrary()V
    .locals 7

    .prologue
    .line 391
    sget-boolean v3, Landroid/webkit/WebViewFactory;->sAddressSpaceReserved:Z

    if-nez v3, :cond_1

    .line 392
    const-string v3, "WebViewFactory"

    const-string v4, "can\'t load with relro file; address space not reserved"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    :cond_0
    :goto_0
    return-void

    .line 397
    :cond_1
    :try_start_0
    invoke-static {}, Landroid/webkit/WebViewFactory;->getUpdateService()Landroid/webkit/IWebViewUpdateService;

    move-result-object v3

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v4

    invoke-virtual {v4}, Ldalvik/system/VMRuntime;->is64Bit()Z

    move-result v4

    invoke-interface {v3, v4}, Landroid/webkit/IWebViewUpdateService;->waitForRelroCreationCompleted(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 404
    :try_start_1
    invoke-static {}, Landroid/webkit/WebViewFactory;->getWebViewNativeLibraryPaths()[Ljava/lang/String;

    move-result-object v0

    .line 405
    .local v0, "args":[Ljava/lang/String;
    const/4 v3, 0x0

    aget-object v3, v0, v3

    const/4 v4, 0x1

    aget-object v4, v0, v4

    const-string v5, "/data/misc/shared_relro/libwebviewchromium32.relro"

    const-string v6, "/data/misc/shared_relro/libwebviewchromium64.relro"

    invoke-static {v3, v4, v5, v6}, Landroid/webkit/WebViewFactory;->nativeLoadWithRelroFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 409
    .local v2, "result":Z
    if-nez v2, :cond_0

    .line 410
    const-string v3, "WebViewFactory"

    const-string v4, "failed to load with relro file, proceeding without"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 414
    .end local v2    # "result":Z
    :catch_0
    move-exception v1

    .line 415
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "WebViewFactory"

    const-string v4, "Failed to list WebView package libraries for loadNativeLibrary"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 398
    .end local v0    # "args":[Ljava/lang/String;
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v1

    .line 399
    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "WebViewFactory"

    const-string v4, "error waiting for relro creation, proceeding without"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static native nativeCreateRelroFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method private static native nativeLoadWithRelroFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method private static native nativeReserveAddressSpace(J)Z
.end method

.method public static onWebViewUpdateInstalled()V
    .locals 16

    .prologue
    .line 246
    const/4 v6, 0x0

    .line 248
    .local v6, "nativeLibs":[Ljava/lang/String;
    :try_start_0
    invoke-static {}, Landroid/webkit/WebViewFactory;->getWebViewNativeLibraryPaths()[Ljava/lang/String;

    move-result-object v6

    .line 249
    if-eqz v6, :cond_3

    .line 250
    const-wide/16 v8, 0x0

    .line 252
    .local v8, "newVmSize":J
    move-object v0, v6

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v7, v0, v2

    .line 254
    .local v7, "path":Ljava/lang/String;
    if-nez v7, :cond_1

    .line 252
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 255
    :cond_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 256
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 257
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v4

    .line 258
    .local v4, "length":J
    cmp-long v11, v4, v8

    if-lez v11, :cond_0

    .line 259
    move-wide v8, v4

    goto :goto_1

    .line 272
    .end local v1    # "f":Ljava/io/File;
    .end local v4    # "length":J
    .end local v7    # "path":Ljava/lang/String;
    :cond_2
    const-wide/16 v12, 0x2

    mul-long/2addr v12, v8

    const-wide/32 v14, 0x6400000

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    .line 273
    const-string v11, "WebViewFactory"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Setting new address space to "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    const-string v11, "persist.sys.webview.vmsize"

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 281
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v8    # "newVmSize":J
    :cond_3
    :goto_2
    invoke-static {v6}, Landroid/webkit/WebViewFactory;->prepareWebViewInSystemServer([Ljava/lang/String;)V

    .line 282
    return-void

    .line 277
    :catch_0
    move-exception v10

    .line 279
    .local v10, "t":Ljava/lang/Throwable;
    const-string v11, "WebViewFactory"

    const-string v12, "error preparing webview native library"

    invoke-static {v11, v12, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method public static prepareWebViewInSystemServer()V
    .locals 4

    .prologue
    .line 218
    const/4 v0, 0x0

    .line 220
    .local v0, "nativePaths":[Ljava/lang/String;
    :try_start_0
    invoke-static {}, Landroid/webkit/WebViewFactory;->getWebViewNativeLibraryPaths()[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 225
    :goto_0
    invoke-static {v0}, Landroid/webkit/WebViewFactory;->prepareWebViewInSystemServer([Ljava/lang/String;)V

    .line 226
    return-void

    .line 221
    :catch_0
    move-exception v1

    .line 223
    .local v1, "t":Ljava/lang/Throwable;
    const-string v2, "WebViewFactory"

    const-string v3, "error preparing webview native library"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static prepareWebViewInSystemServer([Ljava/lang/String;)V
    .locals 1
    .param p0, "nativeLibraryPaths"    # [Ljava/lang/String;

    .prologue
    .line 234
    sget-object v0, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_0

    .line 236
    const/4 v0, 0x0

    invoke-static {v0, p0}, Landroid/webkit/WebViewFactory;->createRelroFile(Z[Ljava/lang/String;)V

    .line 239
    :cond_0
    sget-object v0, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_1

    .line 241
    const/4 v0, 0x1

    invoke-static {v0, p0}, Landroid/webkit/WebViewFactory;->createRelroFile(Z[Ljava/lang/String;)V

    .line 243
    :cond_1
    return-void
.end method

.method public static prepareWebViewInZygote()V
    .locals 6

    .prologue
    .line 191
    :try_start_0
    const-string v3, "webviewchromium_loader"

    invoke-static {v3}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 192
    const-string v3, "persist.sys.webview.vmsize"

    const-wide/32 v4, 0x6400000

    invoke-static {v3, v4, v5}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 195
    .local v0, "addressSpaceToReserve":J
    invoke-static {v0, v1}, Landroid/webkit/WebViewFactory;->nativeReserveAddressSpace(J)Z

    move-result v3

    sput-boolean v3, Landroid/webkit/WebViewFactory;->sAddressSpaceReserved:Z

    .line 197
    sget-boolean v3, Landroid/webkit/WebViewFactory;->sAddressSpaceReserved:Z

    if-eqz v3, :cond_0

    .line 209
    :goto_0
    return-void

    .line 202
    :cond_0
    const-string v3, "WebViewFactory"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "reserving "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " bytes of address space failed"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 205
    :catch_0
    move-exception v2

    .line 207
    .local v2, "t":Ljava/lang/Throwable;
    const-string v3, "WebViewFactory"

    const-string v4, "error preparing native loader"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
