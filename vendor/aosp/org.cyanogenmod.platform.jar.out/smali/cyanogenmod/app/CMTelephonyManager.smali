.class public Lcyanogenmod/app/CMTelephonyManager;
.super Ljava/lang/Object;
.source "CMTelephonyManager.java"


# static fields
.field public static final ASK_FOR_SUBSCRIPTION_ID:I = 0x0

.field private static final TAG:Ljava/lang/String; = "CMTelephonyManager"

.field private static localLOGD:Z

.field private static sCMTelephonyManagerInstance:Lcyanogenmod/app/CMTelephonyManager;

.field private static sService:Lcyanogenmod/app/ICMTelephonyManager;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 46
    const-string/jumbo v0, "CMTelephonyManager"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcyanogenmod/app/CMTelephonyManager;->localLOGD:Z

    .line 38
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 54
    .local v0, "appContext":Landroid/content/Context;
    if-eqz v0, :cond_1

    .line 55
    iput-object v0, p0, Lcyanogenmod/app/CMTelephonyManager;->mContext:Landroid/content/Context;

    .line 59
    :goto_0
    invoke-virtual {p0}, Lcyanogenmod/app/CMTelephonyManager;->getService()Lcyanogenmod/app/ICMTelephonyManager;

    move-result-object v1

    sput-object v1, Lcyanogenmod/app/CMTelephonyManager;->sService:Lcyanogenmod/app/ICMTelephonyManager;

    .line 61
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string/jumbo v2, "org.cyanogenmod.telephony"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 62
    sget-object v1, Lcyanogenmod/app/CMTelephonyManager;->sService:Lcyanogenmod/app/ICMTelephonyManager;

    if-nez v1, :cond_0

    .line 63
    const-string/jumbo v1, "CMTelephonyManager"

    const-string/jumbo v2, "Unable to get CMTelephonyManagerService. The service either crashed, was not started, or the interface has been called to early in SystemServer init"

    invoke-static {v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    :cond_0
    return-void

    .line 57
    :cond_1
    iput-object p1, p0, Lcyanogenmod/app/CMTelephonyManager;->mContext:Landroid/content/Context;

    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;)Lcyanogenmod/app/CMTelephonyManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 75
    sget-object v0, Lcyanogenmod/app/CMTelephonyManager;->sCMTelephonyManagerInstance:Lcyanogenmod/app/CMTelephonyManager;

    if-nez v0, :cond_0

    .line 76
    new-instance v0, Lcyanogenmod/app/CMTelephonyManager;

    invoke-direct {v0, p0}, Lcyanogenmod/app/CMTelephonyManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcyanogenmod/app/CMTelephonyManager;->sCMTelephonyManagerInstance:Lcyanogenmod/app/CMTelephonyManager;

    .line 78
    :cond_0
    sget-object v0, Lcyanogenmod/app/CMTelephonyManager;->sCMTelephonyManagerInstance:Lcyanogenmod/app/CMTelephonyManager;

    return-object v0
.end method


# virtual methods
.method public getService()Lcyanogenmod/app/ICMTelephonyManager;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 83
    sget-object v1, Lcyanogenmod/app/CMTelephonyManager;->sService:Lcyanogenmod/app/ICMTelephonyManager;

    if-eqz v1, :cond_0

    .line 84
    sget-object v1, Lcyanogenmod/app/CMTelephonyManager;->sService:Lcyanogenmod/app/ICMTelephonyManager;

    return-object v1

    .line 86
    :cond_0
    const-string/jumbo v1, "cmtelephonymanager"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 87
    .local v0, "b":Landroid/os/IBinder;
    if-eqz v0, :cond_1

    .line 88
    invoke-static {v0}, Lcyanogenmod/app/ICMTelephonyManager$Stub;->asInterface(Landroid/os/IBinder;)Lcyanogenmod/app/ICMTelephonyManager;

    move-result-object v1

    sput-object v1, Lcyanogenmod/app/CMTelephonyManager;->sService:Lcyanogenmod/app/ICMTelephonyManager;

    .line 89
    sget-object v1, Lcyanogenmod/app/CMTelephonyManager;->sService:Lcyanogenmod/app/ICMTelephonyManager;

    return-object v1

    .line 91
    :cond_1
    return-object v2
.end method

.method public getSubInformation()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 102
    sget-object v3, Lcyanogenmod/app/CMTelephonyManager;->sService:Lcyanogenmod/app/ICMTelephonyManager;

    if-nez v3, :cond_0

    .line 103
    const-string/jumbo v3, "CMTelephonyManager"

    const-string/jumbo v4, "not connected to CMTelephonyManager"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    return-object v5

    .line 107
    :cond_0
    sget-boolean v3, Lcyanogenmod/app/CMTelephonyManager;->localLOGD:Z

    if-eqz v3, :cond_1

    .line 108
    iget-object v3, p0, Lcyanogenmod/app/CMTelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 109
    .local v1, "pkg":Ljava/lang/String;
    const-string/jumbo v3, "CMTelephonyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " getting the SIMs information"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    .end local v1    # "pkg":Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    .line 113
    .local v2, "subInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    :try_start_0
    sget-object v3, Lcyanogenmod/app/CMTelephonyManager;->sService:Lcyanogenmod/app/ICMTelephonyManager;

    invoke-interface {v3}, Lcyanogenmod/app/ICMTelephonyManager;->getSubInformation()Ljava/util/List;

    move-result-object v2

    .line 114
    .local v2, "subInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    if-nez v2, :cond_3

    .line 115
    const-string/jumbo v3, "CMTelephonyManager"

    const-string/jumbo v4, "no subscription list was returned from the service"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    .end local v2    # "subInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    :cond_2
    :goto_0
    return-object v2

    .line 116
    .restart local v2    # "subInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    :cond_3
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 117
    const-string/jumbo v3, "CMTelephonyManager"

    const-string/jumbo v4, "the subscription list is empty"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 119
    .end local v2    # "subInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    :catch_0
    move-exception v0

    .line 120
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "CMTelephonyManager"

    const-string/jumbo v4, "warning: no cm telephony manager service"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public isDataConnectionEnabled()Z
    .locals 6

    .prologue
    .line 232
    sget-object v3, Lcyanogenmod/app/CMTelephonyManager;->sService:Lcyanogenmod/app/ICMTelephonyManager;

    if-nez v3, :cond_0

    .line 233
    const-string/jumbo v3, "CMTelephonyManager"

    const-string/jumbo v4, "not connected to CMTelephonyManager"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    const/4 v3, 0x0

    return v3

    .line 237
    :cond_0
    sget-boolean v3, Lcyanogenmod/app/CMTelephonyManager;->localLOGD:Z

    if-eqz v3, :cond_1

    .line 238
    iget-object v3, p0, Lcyanogenmod/app/CMTelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 239
    .local v2, "pkg":Ljava/lang/String;
    const-string/jumbo v3, "CMTelephonyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " getting if the network data connection is enabled"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    .end local v2    # "pkg":Ljava/lang/String;
    :cond_1
    const/4 v0, 0x0

    .line 243
    .local v0, "dataConnectionEnabled":Z
    :try_start_0
    sget-object v3, Lcyanogenmod/app/CMTelephonyManager;->sService:Lcyanogenmod/app/ICMTelephonyManager;

    invoke-interface {v3}, Lcyanogenmod/app/ICMTelephonyManager;->isDataConnectionEnabled()Z

    move-result v0

    .line 244
    .local v0, "dataConnectionEnabled":Z
    sget-boolean v3, Lcyanogenmod/app/CMTelephonyManager;->localLOGD:Z

    if-eqz v3, :cond_2

    .line 245
    iget-object v3, p0, Lcyanogenmod/app/CMTelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 246
    .restart local v2    # "pkg":Ljava/lang/String;
    const-string/jumbo v3, "CMTelephonyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " getting if the network data connection is enabled: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 252
    .end local v0    # "dataConnectionEnabled":Z
    .end local v2    # "pkg":Ljava/lang/String;
    :cond_2
    :goto_0
    return v0

    .line 248
    :catch_0
    move-exception v1

    .line 249
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "CMTelephonyManager"

    const-string/jumbo v4, "warning: no cm telephony manager service"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public isDataConnectionSelectedOnSub(I)Z
    .locals 6
    .param p1, "subId"    # I

    .prologue
    .line 199
    sget-object v3, Lcyanogenmod/app/CMTelephonyManager;->sService:Lcyanogenmod/app/ICMTelephonyManager;

    if-nez v3, :cond_0

    .line 200
    const-string/jumbo v3, "CMTelephonyManager"

    const-string/jumbo v4, "not connected to CMTelephonyManager"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    const/4 v3, 0x0

    return v3

    .line 204
    :cond_0
    sget-boolean v3, Lcyanogenmod/app/CMTelephonyManager;->localLOGD:Z

    if-eqz v3, :cond_1

    .line 205
    iget-object v3, p0, Lcyanogenmod/app/CMTelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 206
    .local v2, "pkg":Ljava/lang/String;
    const-string/jumbo v3, "CMTelephonyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " getting if the data connection is enabled for SIM for subscription: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    .end local v2    # "pkg":Ljava/lang/String;
    :cond_1
    const/4 v0, 0x0

    .line 210
    .local v0, "dataConnectionActiveOnSim":Z
    :try_start_0
    sget-object v3, Lcyanogenmod/app/CMTelephonyManager;->sService:Lcyanogenmod/app/ICMTelephonyManager;

    invoke-interface {v3, p1}, Lcyanogenmod/app/ICMTelephonyManager;->isDataConnectionSelectedOnSub(I)Z

    move-result v0

    .line 211
    .local v0, "dataConnectionActiveOnSim":Z
    sget-boolean v3, Lcyanogenmod/app/CMTelephonyManager;->localLOGD:Z

    if-eqz v3, :cond_2

    .line 212
    iget-object v3, p0, Lcyanogenmod/app/CMTelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 213
    .restart local v2    # "pkg":Ljava/lang/String;
    const-string/jumbo v3, "CMTelephonyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " getting if the data connection is enabled for SIM with subscription "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 214
    const-string/jumbo v5, " as active: "

    .line 213
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 220
    .end local v0    # "dataConnectionActiveOnSim":Z
    .end local v2    # "pkg":Ljava/lang/String;
    :cond_2
    :goto_0
    return v0

    .line 216
    :catch_0
    move-exception v1

    .line 217
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "CMTelephonyManager"

    const-string/jumbo v4, "warning: no cm telephony manager service"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public isSubActive(I)Z
    .locals 6
    .param p1, "subId"    # I

    .prologue
    .line 136
    sget-object v3, Lcyanogenmod/app/CMTelephonyManager;->sService:Lcyanogenmod/app/ICMTelephonyManager;

    if-nez v3, :cond_0

    .line 137
    const-string/jumbo v3, "CMTelephonyManager"

    const-string/jumbo v4, "not connected to CMTelephonyManager"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    const/4 v3, 0x0

    return v3

    .line 141
    :cond_0
    sget-boolean v3, Lcyanogenmod/app/CMTelephonyManager;->localLOGD:Z

    if-eqz v3, :cond_1

    .line 142
    iget-object v3, p0, Lcyanogenmod/app/CMTelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 143
    .local v1, "pkg":Ljava/lang/String;
    const-string/jumbo v3, "CMTelephonyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " getting the state of the SIM with subscription: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    .end local v1    # "pkg":Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    .line 147
    .local v2, "simActive":Z
    :try_start_0
    sget-object v3, Lcyanogenmod/app/CMTelephonyManager;->sService:Lcyanogenmod/app/ICMTelephonyManager;

    invoke-interface {v3, p1}, Lcyanogenmod/app/ICMTelephonyManager;->isSubActive(I)Z

    move-result v2

    .line 148
    .local v2, "simActive":Z
    sget-boolean v3, Lcyanogenmod/app/CMTelephonyManager;->localLOGD:Z

    if-eqz v3, :cond_2

    .line 149
    iget-object v3, p0, Lcyanogenmod/app/CMTelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 150
    .restart local v1    # "pkg":Ljava/lang/String;
    const-string/jumbo v3, "CMTelephonyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " getting the SIM state with subscription "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " as active: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    .end local v1    # "pkg":Ljava/lang/String;
    .end local v2    # "simActive":Z
    :cond_2
    :goto_0
    return v2

    .line 152
    :catch_0
    move-exception v0

    .line 153
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "CMTelephonyManager"

    const-string/jumbo v4, "warning: no cm telephony manager service"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setDataConnectionSelectedOnSub(I)V
    .locals 5
    .param p1, "subId"    # I

    .prologue
    .line 288
    sget-object v2, Lcyanogenmod/app/CMTelephonyManager;->sService:Lcyanogenmod/app/ICMTelephonyManager;

    if-nez v2, :cond_0

    .line 289
    const-string/jumbo v2, "CMTelephonyManager"

    const-string/jumbo v3, "not connected to CMTelephonyManager"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    return-void

    .line 293
    :cond_0
    sget-boolean v2, Lcyanogenmod/app/CMTelephonyManager;->localLOGD:Z

    if-eqz v2, :cond_1

    .line 294
    iget-object v2, p0, Lcyanogenmod/app/CMTelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 295
    .local v1, "pkg":Ljava/lang/String;
    const-string/jumbo v2, "CMTelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " setting the network data connection for SIM with subscription: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    .end local v1    # "pkg":Ljava/lang/String;
    :cond_1
    :try_start_0
    sget-object v2, Lcyanogenmod/app/CMTelephonyManager;->sService:Lcyanogenmod/app/ICMTelephonyManager;

    invoke-interface {v2, p1}, Lcyanogenmod/app/ICMTelephonyManager;->setDataConnectionSelectedOnSub(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 287
    :goto_0
    return-void

    .line 300
    :catch_0
    move-exception v0

    .line 301
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "CMTelephonyManager"

    const-string/jumbo v3, "warning: no cm telephony manager service"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setDataConnectionState(Z)V
    .locals 5
    .param p1, "state"    # Z

    .prologue
    .line 261
    sget-object v2, Lcyanogenmod/app/CMTelephonyManager;->sService:Lcyanogenmod/app/ICMTelephonyManager;

    if-nez v2, :cond_0

    .line 262
    const-string/jumbo v2, "CMTelephonyManager"

    const-string/jumbo v3, "not connected to CMTelephonyManager"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    return-void

    .line 266
    :cond_0
    sget-boolean v2, Lcyanogenmod/app/CMTelephonyManager;->localLOGD:Z

    if-eqz v2, :cond_1

    .line 267
    iget-object v2, p0, Lcyanogenmod/app/CMTelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 268
    .local v1, "pkg":Ljava/lang/String;
    const-string/jumbo v2, "CMTelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " setting the network data connection enabled: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    .end local v1    # "pkg":Ljava/lang/String;
    :cond_1
    :try_start_0
    sget-object v2, Lcyanogenmod/app/CMTelephonyManager;->sService:Lcyanogenmod/app/ICMTelephonyManager;

    invoke-interface {v2, p1}, Lcyanogenmod/app/ICMTelephonyManager;->setDataConnectionState(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 260
    :goto_0
    return-void

    .line 273
    :catch_0
    move-exception v0

    .line 274
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "CMTelephonyManager"

    const-string/jumbo v3, "warning: no cm telephony manager service"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setDefaultPhoneSub(I)V
    .locals 5
    .param p1, "subId"    # I

    .prologue
    .line 315
    sget-object v2, Lcyanogenmod/app/CMTelephonyManager;->sService:Lcyanogenmod/app/ICMTelephonyManager;

    if-nez v2, :cond_0

    .line 316
    const-string/jumbo v2, "CMTelephonyManager"

    const-string/jumbo v3, "not connected to CMTelephonyManager"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    return-void

    .line 320
    :cond_0
    sget-boolean v2, Lcyanogenmod/app/CMTelephonyManager;->localLOGD:Z

    if-eqz v2, :cond_1

    .line 321
    iget-object v2, p0, Lcyanogenmod/app/CMTelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 322
    .local v1, "pkg":Ljava/lang/String;
    const-string/jumbo v2, "CMTelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " setting the subscription used for phone calls as: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    .end local v1    # "pkg":Ljava/lang/String;
    :cond_1
    :try_start_0
    sget-object v2, Lcyanogenmod/app/CMTelephonyManager;->sService:Lcyanogenmod/app/ICMTelephonyManager;

    invoke-interface {v2, p1}, Lcyanogenmod/app/ICMTelephonyManager;->setDefaultPhoneSub(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 314
    :goto_0
    return-void

    .line 327
    :catch_0
    move-exception v0

    .line 328
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "CMTelephonyManager"

    const-string/jumbo v3, "warning: no cm telephony manager service"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setDefaultSmsSub(I)V
    .locals 5
    .param p1, "subId"    # I

    .prologue
    .line 342
    sget-object v2, Lcyanogenmod/app/CMTelephonyManager;->sService:Lcyanogenmod/app/ICMTelephonyManager;

    if-nez v2, :cond_0

    .line 343
    const-string/jumbo v2, "CMTelephonyManager"

    const-string/jumbo v3, "not connected to CMTelephonyManager"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    return-void

    .line 347
    :cond_0
    sget-boolean v2, Lcyanogenmod/app/CMTelephonyManager;->localLOGD:Z

    if-eqz v2, :cond_1

    .line 348
    iget-object v2, p0, Lcyanogenmod/app/CMTelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 349
    .local v1, "pkg":Ljava/lang/String;
    const-string/jumbo v2, "CMTelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " setting the subscription used for SMS as: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    .end local v1    # "pkg":Ljava/lang/String;
    :cond_1
    :try_start_0
    sget-object v2, Lcyanogenmod/app/CMTelephonyManager;->sService:Lcyanogenmod/app/ICMTelephonyManager;

    invoke-interface {v2, p1}, Lcyanogenmod/app/ICMTelephonyManager;->setDefaultSmsSub(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 341
    :goto_0
    return-void

    .line 354
    :catch_0
    move-exception v0

    .line 355
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "CMTelephonyManager"

    const-string/jumbo v3, "warning: no cm telephony manager service"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setSubState(IZ)V
    .locals 5
    .param p1, "subId"    # I
    .param p2, "state"    # Z

    .prologue
    .line 169
    sget-object v2, Lcyanogenmod/app/CMTelephonyManager;->sService:Lcyanogenmod/app/ICMTelephonyManager;

    if-nez v2, :cond_0

    .line 170
    const-string/jumbo v2, "CMTelephonyManager"

    const-string/jumbo v3, "not connected to CMTelephonyManager"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    return-void

    .line 174
    :cond_0
    sget-boolean v2, Lcyanogenmod/app/CMTelephonyManager;->localLOGD:Z

    if-eqz v2, :cond_1

    .line 175
    iget-object v2, p0, Lcyanogenmod/app/CMTelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 176
    .local v1, "pkg":Ljava/lang/String;
    const-string/jumbo v2, "CMTelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " setting the state of the SIM with subscription "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " as active: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    .end local v1    # "pkg":Ljava/lang/String;
    :cond_1
    :try_start_0
    sget-object v2, Lcyanogenmod/app/CMTelephonyManager;->sService:Lcyanogenmod/app/ICMTelephonyManager;

    invoke-interface {v2, p1, p2}, Lcyanogenmod/app/ICMTelephonyManager;->setSubState(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 168
    :goto_0
    return-void

    .line 181
    :catch_0
    move-exception v0

    .line 182
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "CMTelephonyManager"

    const-string/jumbo v3, "warning: no cm telephony manager service"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
