.class public Lcyanogenmod/app/PartnerInterface;
.super Ljava/lang/Object;
.source "PartnerInterface.java"


# static fields
.field public static final MODIFY_NETWORK_SETTINGS_PERMISSION:Ljava/lang/String; = "cyanogenmod.permission.MODIFY_NETWORK_SETTINGS"

.field public static final MODIFY_SOUND_SETTINGS_PERMISSION:Ljava/lang/String; = "cyanogenmod.permission.MODIFY_SOUND_SETTINGS"

.field private static final TAG:Ljava/lang/String; = "PartnerInterface"

.field public static final ZEN_MODE_IMPORTANT_INTERRUPTIONS:I = 0x1

.field public static final ZEN_MODE_NO_INTERRUPTIONS:I = 0x2

.field public static final ZEN_MODE_OFF:I

.field private static sPartnerInterfaceInstance:Lcyanogenmod/app/PartnerInterface;

.field private static sService:Lcyanogenmod/app/IPartnerInterface;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 80
    .local v0, "appContext":Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 81
    iput-object v0, p0, Lcyanogenmod/app/PartnerInterface;->mContext:Landroid/content/Context;

    .line 85
    :goto_0
    invoke-static {}, Lcyanogenmod/app/PartnerInterface;->getService()Lcyanogenmod/app/IPartnerInterface;

    move-result-object v1

    sput-object v1, Lcyanogenmod/app/PartnerInterface;->sService:Lcyanogenmod/app/IPartnerInterface;

    .line 86
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 87
    const-string/jumbo v2, "org.cyanogenmod.partner"

    .line 86
    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 87
    sget-object v1, Lcyanogenmod/app/PartnerInterface;->sService:Lcyanogenmod/app/IPartnerInterface;

    if-nez v1, :cond_1

    .line 88
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "Unable to get PartnerInterfaceService. The service either crashed, was not started, or the interface has been called to early in SystemServer init"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 83
    :cond_0
    iput-object p1, p0, Lcyanogenmod/app/PartnerInterface;->mContext:Landroid/content/Context;

    goto :goto_0

    .line 78
    :cond_1
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcyanogenmod/app/PartnerInterface;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 100
    sget-object v0, Lcyanogenmod/app/PartnerInterface;->sPartnerInterfaceInstance:Lcyanogenmod/app/PartnerInterface;

    if-nez v0, :cond_0

    .line 101
    new-instance v0, Lcyanogenmod/app/PartnerInterface;

    invoke-direct {v0, p0}, Lcyanogenmod/app/PartnerInterface;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcyanogenmod/app/PartnerInterface;->sPartnerInterfaceInstance:Lcyanogenmod/app/PartnerInterface;

    .line 103
    :cond_0
    sget-object v0, Lcyanogenmod/app/PartnerInterface;->sPartnerInterfaceInstance:Lcyanogenmod/app/PartnerInterface;

    return-object v0
.end method

.method public static getService()Lcyanogenmod/app/IPartnerInterface;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 108
    sget-object v1, Lcyanogenmod/app/PartnerInterface;->sService:Lcyanogenmod/app/IPartnerInterface;

    if-eqz v1, :cond_0

    .line 109
    sget-object v1, Lcyanogenmod/app/PartnerInterface;->sService:Lcyanogenmod/app/IPartnerInterface;

    return-object v1

    .line 111
    :cond_0
    const-string/jumbo v1, "cmpartnerinterface"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 112
    .local v0, "b":Landroid/os/IBinder;
    if-eqz v0, :cond_1

    .line 113
    invoke-static {v0}, Lcyanogenmod/app/IPartnerInterface$Stub;->asInterface(Landroid/os/IBinder;)Lcyanogenmod/app/IPartnerInterface;

    move-result-object v1

    sput-object v1, Lcyanogenmod/app/PartnerInterface;->sService:Lcyanogenmod/app/IPartnerInterface;

    .line 114
    sget-object v1, Lcyanogenmod/app/PartnerInterface;->sService:Lcyanogenmod/app/IPartnerInterface;

    return-object v1

    .line 116
    :cond_1
    return-object v2
.end method


# virtual methods
.method public getCurrentHotwordPackageName()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 252
    sget-object v1, Lcyanogenmod/app/PartnerInterface;->sService:Lcyanogenmod/app/IPartnerInterface;

    if-nez v1, :cond_0

    .line 253
    return-object v3

    .line 256
    :cond_0
    :try_start_0
    sget-object v1, Lcyanogenmod/app/PartnerInterface;->sService:Lcyanogenmod/app/IPartnerInterface;

    invoke-interface {v1}, Lcyanogenmod/app/IPartnerInterface;->getCurrentHotwordPackageName()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 257
    :catch_0
    move-exception v0

    .line 258
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "PartnerInterface"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 260
    return-object v3
.end method

.method public rebootDevice()V
    .locals 3

    .prologue
    .line 236
    sget-object v1, Lcyanogenmod/app/PartnerInterface;->sService:Lcyanogenmod/app/IPartnerInterface;

    if-nez v1, :cond_0

    .line 237
    return-void

    .line 240
    :cond_0
    :try_start_0
    sget-object v1, Lcyanogenmod/app/PartnerInterface;->sService:Lcyanogenmod/app/IPartnerInterface;

    invoke-interface {v1}, Lcyanogenmod/app/IPartnerInterface;->reboot()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 235
    :goto_0
    return-void

    .line 241
    :catch_0
    move-exception v0

    .line 242
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "PartnerInterface"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setAirplaneModeEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 128
    sget-object v1, Lcyanogenmod/app/PartnerInterface;->sService:Lcyanogenmod/app/IPartnerInterface;

    if-nez v1, :cond_0

    .line 129
    return-void

    .line 132
    :cond_0
    :try_start_0
    sget-object v1, Lcyanogenmod/app/PartnerInterface;->sService:Lcyanogenmod/app/IPartnerInterface;

    invoke-interface {v1, p1}, Lcyanogenmod/app/IPartnerInterface;->setAirplaneModeEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    :goto_0
    return-void

    .line 133
    :catch_0
    move-exception v0

    .line 134
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "PartnerInterface"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setMobileDataEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 146
    sget-object v1, Lcyanogenmod/app/PartnerInterface;->sService:Lcyanogenmod/app/IPartnerInterface;

    if-nez v1, :cond_0

    .line 147
    return-void

    .line 150
    :cond_0
    :try_start_0
    sget-object v1, Lcyanogenmod/app/PartnerInterface;->sService:Lcyanogenmod/app/IPartnerInterface;

    invoke-interface {v1, p1}, Lcyanogenmod/app/IPartnerInterface;->setMobileDataEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    :goto_0
    return-void

    .line 151
    :catch_0
    move-exception v0

    .line 152
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "PartnerInterface"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setZenMode(I)Z
    .locals 4
    .param p1, "mode"    # I

    .prologue
    const/4 v3, 0x0

    .line 171
    sget-object v1, Lcyanogenmod/app/PartnerInterface;->sService:Lcyanogenmod/app/IPartnerInterface;

    if-nez v1, :cond_0

    .line 172
    return v3

    .line 175
    :cond_0
    :try_start_0
    sget-object v1, Lcyanogenmod/app/PartnerInterface;->sService:Lcyanogenmod/app/IPartnerInterface;

    invoke-interface {v1, p1}, Lcyanogenmod/app/IPartnerInterface;->setZenMode(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 176
    :catch_0
    move-exception v0

    .line 177
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "PartnerInterface"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 179
    return v3
.end method

.method public setZenModeWithDuration(IJ)Z
    .locals 4
    .param p1, "mode"    # I
    .param p2, "durationMillis"    # J

    .prologue
    const/4 v3, 0x0

    .line 201
    sget-object v1, Lcyanogenmod/app/PartnerInterface;->sService:Lcyanogenmod/app/IPartnerInterface;

    if-nez v1, :cond_0

    .line 202
    return v3

    .line 205
    :cond_0
    :try_start_0
    sget-object v1, Lcyanogenmod/app/PartnerInterface;->sService:Lcyanogenmod/app/IPartnerInterface;

    invoke-interface {v1, p1, p2, p3}, Lcyanogenmod/app/IPartnerInterface;->setZenModeWithDuration(IJ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 206
    :catch_0
    move-exception v0

    .line 207
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "PartnerInterface"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 209
    return v3
.end method

.method public shutdownDevice()V
    .locals 3

    .prologue
    .line 219
    sget-object v1, Lcyanogenmod/app/PartnerInterface;->sService:Lcyanogenmod/app/IPartnerInterface;

    if-nez v1, :cond_0

    .line 220
    return-void

    .line 223
    :cond_0
    :try_start_0
    sget-object v1, Lcyanogenmod/app/PartnerInterface;->sService:Lcyanogenmod/app/IPartnerInterface;

    invoke-interface {v1}, Lcyanogenmod/app/IPartnerInterface;->shutdown()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 218
    :goto_0
    return-void

    .line 224
    :catch_0
    move-exception v0

    .line 225
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "PartnerInterface"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
