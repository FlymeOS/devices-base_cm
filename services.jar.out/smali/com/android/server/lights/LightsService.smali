.class public Lcom/android/server/lights/LightsService;
.super Lcom/android/server/SystemService;
.source "LightsService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/lights/LightsService$LightImpl;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field static final TAG:Ljava/lang/String; = "LightsService"


# instance fields
.field private mH:Landroid/os/Handler;

.field private final mLegacyFlashlightHack:Landroid/os/IHardwareService$Stub;

.field final mLights:[Lcom/android/server/lights/LightsService$LightImpl;

.field private mNativePointer:J

.field private final mService:Lcom/android/server/lights/LightsManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/16 v4, 0xa

    .line 183
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 37
    new-array v1, v4, [Lcom/android/server/lights/LightsService$LightImpl;

    iput-object v1, p0, Lcom/android/server/lights/LightsService;->mLights:[Lcom/android/server/lights/LightsService$LightImpl;

    .line 146
    new-instance v1, Lcom/android/server/lights/LightsService$1;

    invoke-direct {v1, p0}, Lcom/android/server/lights/LightsService$1;-><init>(Lcom/android/server/lights/LightsService;)V

    iput-object v1, p0, Lcom/android/server/lights/LightsService;->mLegacyFlashlightHack:Landroid/os/IHardwareService$Stub;

    .line 198
    new-instance v1, Lcom/android/server/lights/LightsService$2;

    invoke-direct {v1, p0}, Lcom/android/server/lights/LightsService$2;-><init>(Lcom/android/server/lights/LightsService;)V

    iput-object v1, p0, Lcom/android/server/lights/LightsService;->mService:Lcom/android/server/lights/LightsManager;

    .line 215
    new-instance v1, Lcom/android/server/lights/LightsService$3;

    invoke-direct {v1, p0}, Lcom/android/server/lights/LightsService$3;-><init>(Lcom/android/server/lights/LightsService;)V

    iput-object v1, p0, Lcom/android/server/lights/LightsService;->mH:Landroid/os/Handler;

    .line 185
    invoke-static {}, Lcom/android/server/lights/LightsService;->init_native()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/lights/LightsService;->mNativePointer:J

    .line 187
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v4, :cond_0

    .line 188
    iget-object v1, p0, Lcom/android/server/lights/LightsService;->mLights:[Lcom/android/server/lights/LightsService$LightImpl;

    new-instance v2, Lcom/android/server/lights/LightsService$LightImpl;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v0, v3}, Lcom/android/server/lights/LightsService$LightImpl;-><init>(Lcom/android/server/lights/LightsService;ILcom/android/server/lights/LightsService$1;)V

    aput-object v2, v1, v0

    .line 187
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 190
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/lights/LightsService;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/lights/LightsService;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/server/lights/LightsService;->mH:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/lights/LightsService;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/lights/LightsService;

    .prologue
    .line 33
    iget-wide v0, p0, Lcom/android/server/lights/LightsService;->mNativePointer:J

    return-wide v0
.end method

.method private static native finalize_native(J)V
.end method

.method private static native init_native()J
.end method

.method static native setLight_native(JIIIIIIII)V
.end method


# virtual methods
.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 211
    iget-wide v0, p0, Lcom/android/server/lights/LightsService;->mNativePointer:J

    invoke-static {v0, v1}, Lcom/android/server/lights/LightsService;->finalize_native(J)V

    .line 212
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 213
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 194
    const-string v0, "hardware"

    iget-object v1, p0, Lcom/android/server/lights/LightsService;->mLegacyFlashlightHack:Landroid/os/IHardwareService$Stub;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/lights/LightsService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 195
    const-class v0, Lcom/android/server/lights/LightsManager;

    iget-object v1, p0, Lcom/android/server/lights/LightsService;->mService:Lcom/android/server/lights/LightsManager;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/lights/LightsService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 196
    return-void
.end method
