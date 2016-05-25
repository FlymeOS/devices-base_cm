.class public final Lcom/android/server/display/DigitalPenOffScreenDisplayAdapter;
.super Lcom/android/server/display/DisplayAdapter;
.source "DigitalPenOffScreenDisplayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/DigitalPenOffScreenDisplayAdapter$1;,
        Lcom/android/server/display/DigitalPenOffScreenDisplayAdapter$DimensionsCallback;,
        Lcom/android/server/display/DigitalPenOffScreenDisplayAdapter$DigitalPenOffScreenDisplayDevice;
    }
.end annotation


# static fields
.field public static final DISPLAY_NAME:Ljava/lang/String; = "Digital Pen off-screen display"

.field private static final TAG:Ljava/lang/String; = "DigitalPenOffScreenDisplayAdapter"

.field private static final mDigitalPenCapable:Z


# instance fields
.field private mCallback:Lcom/android/server/display/DigitalPenOffScreenDisplayAdapter$DimensionsCallback;

.field private mDevice:Lcom/android/server/display/DigitalPenOffScreenDisplayAdapter$DigitalPenOffScreenDisplayDevice;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 59
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11200a5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/display/DigitalPenOffScreenDisplayAdapter;->mDigitalPenCapable:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/server/display/DisplayManagerService$SyncRoot;Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/DisplayAdapter$Listener;)V
    .locals 6
    .param p1, "syncRoot"    # Lcom/android/server/display/DisplayManagerService$SyncRoot;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "listener"    # Lcom/android/server/display/DisplayAdapter$Listener;

    .prologue
    .line 66
    const-string v5, "DigitalPenOffScreenDisplayAdapter"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/display/DisplayAdapter;-><init>(Lcom/android/server/display/DisplayManagerService$SyncRoot;Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/DisplayAdapter$Listener;Ljava/lang/String;)V

    .line 67
    new-instance v0, Lcom/android/server/display/DigitalPenOffScreenDisplayAdapter$DimensionsCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/display/DigitalPenOffScreenDisplayAdapter$DimensionsCallback;-><init>(Lcom/android/server/display/DigitalPenOffScreenDisplayAdapter;Lcom/android/server/display/DigitalPenOffScreenDisplayAdapter$1;)V

    iput-object v0, p0, Lcom/android/server/display/DigitalPenOffScreenDisplayAdapter;->mCallback:Lcom/android/server/display/DigitalPenOffScreenDisplayAdapter$DimensionsCallback;

    .line 68
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/display/DigitalPenOffScreenDisplayAdapter;)Lcom/android/server/display/DigitalPenOffScreenDisplayAdapter$DigitalPenOffScreenDisplayDevice;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/DigitalPenOffScreenDisplayAdapter;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/server/display/DigitalPenOffScreenDisplayAdapter;->mDevice:Lcom/android/server/display/DigitalPenOffScreenDisplayAdapter$DigitalPenOffScreenDisplayDevice;

    return-object v0
.end method

.method public static getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    const-string v0, "Digital Pen off-screen display"

    return-object v0
.end method

.method public static isDigitalPenDisabled()Z
    .locals 1

    .prologue
    .line 71
    sget-boolean v0, Lcom/android/server/display/DigitalPenOffScreenDisplayAdapter;->mDigitalPenCapable:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private registerOffScreenDimensionsCallbackLocked()V
    .locals 9

    .prologue
    .line 91
    const-string v6, "DigitalPen"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 92
    .local v1, "digitalPenService":Landroid/os/IBinder;
    if-nez v1, :cond_0

    .line 117
    :goto_0
    return-void

    .line 95
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 97
    .local v2, "digitalPenServiceClass":Ljava/lang/Class;
    const/4 v6, 0x1

    :try_start_0
    new-array v0, v6, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Lcodeaurora/ultrasound/IDigitalPenDimensionsCallback;

    aput-object v7, v0, v6

    .line 101
    .local v0, "args":[Ljava/lang/Class;
    const-string v6, "registerOffScreenDimensionsCallback"

    invoke-virtual {v2, v6, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 103
    .local v4, "registerCallbackMethod":Ljava/lang/reflect/Method;
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/server/display/DigitalPenOffScreenDisplayAdapter;->mCallback:Lcom/android/server/display/DigitalPenOffScreenDisplayAdapter$DimensionsCallback;

    aput-object v8, v6, v7

    invoke-virtual {v4, v1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 105
    .end local v0    # "args":[Ljava/lang/Class;
    .end local v4    # "registerCallbackMethod":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v3

    .line 106
    .local v3, "e":Ljava/lang/reflect/InvocationTargetException;
    const-string v6, "DigitalPenOffScreenDisplayAdapter"

    const-string v7, "DigitalPenService.registerOffScreenDimensionsCallback - InvocationTargetException"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    invoke-virtual {v3}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    .line 109
    .end local v3    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_1
    move-exception v3

    .line 110
    .local v3, "e":Ljava/lang/IllegalAccessException;
    const-string v6, "DigitalPenOffScreenDisplayAdapter"

    const-string v7, "DigitalPenService.registerOffScreenDimensionsCallback - IllegalAccessException"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    invoke-virtual {v3}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 113
    .end local v3    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v5

    .line 114
    .local v5, "t":Ljava/lang/Throwable;
    const-string v6, "DigitalPenOffScreenDisplayAdapter"

    const-string v7, "DigitalPenService.registerOffScreenDimensionsCallback Not available."

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public bridge synthetic dumpLocked(Ljava/io/PrintWriter;)V
    .locals 0

    .prologue
    .line 55
    invoke-super {p0, p1}, Lcom/android/server/display/DisplayAdapter;->dumpLocked(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public registerLocked()V
    .locals 3

    .prologue
    .line 80
    invoke-super {p0}, Lcom/android/server/display/DisplayAdapter;->registerLocked()V

    .line 82
    invoke-static {}, Lcom/android/server/display/DigitalPenOffScreenDisplayAdapter;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/view/SurfaceControl;->createDisplay(Ljava/lang/String;Z)Landroid/os/IBinder;

    move-result-object v0

    .line 84
    .local v0, "displayToken":Landroid/os/IBinder;
    new-instance v1, Lcom/android/server/display/DigitalPenOffScreenDisplayAdapter$DigitalPenOffScreenDisplayDevice;

    invoke-direct {v1, p0, v0}, Lcom/android/server/display/DigitalPenOffScreenDisplayAdapter$DigitalPenOffScreenDisplayDevice;-><init>(Lcom/android/server/display/DigitalPenOffScreenDisplayAdapter;Landroid/os/IBinder;)V

    iput-object v1, p0, Lcom/android/server/display/DigitalPenOffScreenDisplayAdapter;->mDevice:Lcom/android/server/display/DigitalPenOffScreenDisplayAdapter$DigitalPenOffScreenDisplayDevice;

    .line 85
    iget-object v1, p0, Lcom/android/server/display/DigitalPenOffScreenDisplayAdapter;->mDevice:Lcom/android/server/display/DigitalPenOffScreenDisplayAdapter$DigitalPenOffScreenDisplayDevice;

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/android/server/display/DigitalPenOffScreenDisplayAdapter;->sendDisplayDeviceEventLocked(Lcom/android/server/display/DisplayDevice;I)V

    .line 87
    invoke-direct {p0}, Lcom/android/server/display/DigitalPenOffScreenDisplayAdapter;->registerOffScreenDimensionsCallbackLocked()V

    .line 88
    return-void
.end method
