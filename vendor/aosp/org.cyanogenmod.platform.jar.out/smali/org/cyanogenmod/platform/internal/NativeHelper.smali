.class Lorg/cyanogenmod/platform/internal/NativeHelper;
.super Ljava/lang/Object;
.source "NativeHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CMSDK-JNI"

.field private static sNativeLibraryLoaded:Ljava/lang/Boolean;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static declared-synchronized isNativeLibraryAvailable()Z
    .locals 4

    .prologue
    const-class v2, Lorg/cyanogenmod/platform/internal/NativeHelper;

    monitor-enter v2

    .line 32
    :try_start_0
    sget-object v1, Lorg/cyanogenmod/platform/internal/NativeHelper;->sNativeLibraryLoaded:Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 34
    :try_start_1
    const-string/jumbo v1, "cmsdk_platform_jni"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 35
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lorg/cyanogenmod/platform/internal/NativeHelper;->sNativeLibraryLoaded:Ljava/lang/Boolean;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 42
    .local v0, "t":Ljava/lang/Throwable;
    :cond_0
    :goto_0
    :try_start_2
    sget-object v1, Lorg/cyanogenmod/platform/internal/NativeHelper;->sNativeLibraryLoaded:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v1

    monitor-exit v2

    return v1

    .line 37
    .end local v0    # "t":Ljava/lang/Throwable;
    :catch_0
    move-exception v0

    .line 38
    .restart local v0    # "t":Ljava/lang/Throwable;
    const/4 v1, 0x0

    :try_start_3
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lorg/cyanogenmod/platform/internal/NativeHelper;->sNativeLibraryLoaded:Ljava/lang/Boolean;

    .line 39
    const-string/jumbo v1, "CMSDK-JNI"

    const-string/jumbo v3, "CMSDK native library unavailable"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method
