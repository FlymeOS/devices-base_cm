.class public abstract Lorg/cyanogenmod/platform/internal/ManagedServices;
.super Ljava/lang/Object;
.source "ManagedServices.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/cyanogenmod/platform/internal/ManagedServices$SettingsObserver;,
        Lorg/cyanogenmod/platform/internal/ManagedServices$ManagedServiceInfo;,
        Lorg/cyanogenmod/platform/internal/ManagedServices$UserProfiles;,
        Lorg/cyanogenmod/platform/internal/ManagedServices$Config;
    }
.end annotation


# static fields
.field private static final ENABLED_SERVICES_SEPARATOR:Ljava/lang/String; = ":"


# instance fields
.field protected final DEBUG:Z

.field protected final TAG:Ljava/lang/String;

.field private final mConfig:Lorg/cyanogenmod/platform/internal/ManagedServices$Config;

.field protected final mContext:Landroid/content/Context;

.field private mEnabledServicesForCurrentProfiles:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private mEnabledServicesPackageNames:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLastSeenProfileIds:[I

.field protected final mMutex:Ljava/lang/Object;

.field protected final mServices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/cyanogenmod/platform/internal/ManagedServices$ManagedServiceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mServicesBinding:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mSettingsObserver:Lorg/cyanogenmod/platform/internal/ManagedServices$SettingsObserver;

.field private final mUserProfiles:Lorg/cyanogenmod/platform/internal/ManagedServices$UserProfiles;


# direct methods
.method static synthetic -get0(Lorg/cyanogenmod/platform/internal/ManagedServices;)Lorg/cyanogenmod/platform/internal/ManagedServices$Config;
    .locals 1

    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/ManagedServices;->mConfig:Lorg/cyanogenmod/platform/internal/ManagedServices$Config;

    return-object v0
.end method

.method static synthetic -get1(Lorg/cyanogenmod/platform/internal/ManagedServices;)Landroid/util/ArraySet;
    .locals 1

    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/ManagedServices;->mEnabledServicesForCurrentProfiles:Landroid/util/ArraySet;

    return-object v0
.end method

.method static synthetic -get2(Lorg/cyanogenmod/platform/internal/ManagedServices;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/ManagedServices;->mServicesBinding:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get3(Lorg/cyanogenmod/platform/internal/ManagedServices;)Lorg/cyanogenmod/platform/internal/ManagedServices$UserProfiles;
    .locals 1

    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/ManagedServices;->mUserProfiles:Lorg/cyanogenmod/platform/internal/ManagedServices$UserProfiles;

    return-object v0
.end method

.method static synthetic -wrap0(Lorg/cyanogenmod/platform/internal/ManagedServices;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lorg/cyanogenmod/platform/internal/ManagedServices;->getCaption()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lorg/cyanogenmod/platform/internal/ManagedServices;Landroid/os/IInterface;Landroid/content/ComponentName;IZLandroid/content/ServiceConnection;I)Lorg/cyanogenmod/platform/internal/ManagedServices$ManagedServiceInfo;
    .locals 1
    .param p1, "service"    # Landroid/os/IInterface;
    .param p2, "component"    # Landroid/content/ComponentName;
    .param p3, "userid"    # I
    .param p4, "isSystem"    # Z
    .param p5, "connection"    # Landroid/content/ServiceConnection;
    .param p6, "targetSdkVersion"    # I

    .prologue
    invoke-direct/range {p0 .. p6}, Lorg/cyanogenmod/platform/internal/ManagedServices;->newServiceInfo(Landroid/os/IInterface;Landroid/content/ComponentName;IZLandroid/content/ServiceConnection;I)Lorg/cyanogenmod/platform/internal/ManagedServices$ManagedServiceInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2(Lorg/cyanogenmod/platform/internal/ManagedServices;Landroid/os/IInterface;I)Lorg/cyanogenmod/platform/internal/ManagedServices$ManagedServiceInfo;
    .locals 1
    .param p1, "service"    # Landroid/os/IInterface;
    .param p2, "userid"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lorg/cyanogenmod/platform/internal/ManagedServices;->removeServiceImpl(Landroid/os/IInterface;I)Lorg/cyanogenmod/platform/internal/ManagedServices$ManagedServiceInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap3(Lorg/cyanogenmod/platform/internal/ManagedServices;)V
    .locals 0

    invoke-direct {p0}, Lorg/cyanogenmod/platform/internal/ManagedServices;->rebindServices()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/Object;Lorg/cyanogenmod/platform/internal/ManagedServices$UserProfiles;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "mutex"    # Ljava/lang/Object;
    .param p4, "userProfiles"    # Lorg/cyanogenmod/platform/internal/ManagedServices$UserProfiles;

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    invoke-virtual {p0}, Lorg/cyanogenmod/platform/internal/ManagedServices;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/cyanogenmod/platform/internal/ManagedServices;->TAG:Ljava/lang/String;

    .line 66
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/ManagedServices;->TAG:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    iput-boolean v0, p0, Lorg/cyanogenmod/platform/internal/ManagedServices;->DEBUG:Z

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/cyanogenmod/platform/internal/ManagedServices;->mServices:Ljava/util/ArrayList;

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/cyanogenmod/platform/internal/ManagedServices;->mServicesBinding:Ljava/util/ArrayList;

    .line 84
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 83
    iput-object v0, p0, Lorg/cyanogenmod/platform/internal/ManagedServices;->mEnabledServicesForCurrentProfiles:Landroid/util/ArraySet;

    .line 86
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lorg/cyanogenmod/platform/internal/ManagedServices;->mEnabledServicesPackageNames:Landroid/util/ArraySet;

    .line 94
    iput-object p1, p0, Lorg/cyanogenmod/platform/internal/ManagedServices;->mContext:Landroid/content/Context;

    .line 95
    iput-object p3, p0, Lorg/cyanogenmod/platform/internal/ManagedServices;->mMutex:Ljava/lang/Object;

    .line 96
    iput-object p4, p0, Lorg/cyanogenmod/platform/internal/ManagedServices;->mUserProfiles:Lorg/cyanogenmod/platform/internal/ManagedServices$UserProfiles;

    .line 97
    invoke-virtual {p0}, Lorg/cyanogenmod/platform/internal/ManagedServices;->getConfig()Lorg/cyanogenmod/platform/internal/ManagedServices$Config;

    move-result-object v0

    iput-object v0, p0, Lorg/cyanogenmod/platform/internal/ManagedServices;->mConfig:Lorg/cyanogenmod/platform/internal/ManagedServices$Config;

    .line 98
    new-instance v0, Lorg/cyanogenmod/platform/internal/ManagedServices$SettingsObserver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p2, v1}, Lorg/cyanogenmod/platform/internal/ManagedServices$SettingsObserver;-><init>(Lorg/cyanogenmod/platform/internal/ManagedServices;Landroid/os/Handler;Lorg/cyanogenmod/platform/internal/ManagedServices$SettingsObserver;)V

    iput-object v0, p0, Lorg/cyanogenmod/platform/internal/ManagedServices;->mSettingsObserver:Lorg/cyanogenmod/platform/internal/ManagedServices$SettingsObserver;

    .line 93
    return-void
.end method

.method private checkNotNull(Landroid/os/IInterface;)V
    .locals 3
    .param p1, "service"    # Landroid/os/IInterface;

    .prologue
    .line 470
    if-nez p1, :cond_0

    .line 471
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lorg/cyanogenmod/platform/internal/ManagedServices;->getCaption()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " must not be null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 469
    :cond_0
    return-void
.end method

.method private disableNonexistentServices()V
    .locals 4

    .prologue
    .line 187
    iget-object v3, p0, Lorg/cyanogenmod/platform/internal/ManagedServices;->mUserProfiles:Lorg/cyanogenmod/platform/internal/ManagedServices$UserProfiles;

    invoke-virtual {v3}, Lorg/cyanogenmod/platform/internal/ManagedServices$UserProfiles;->getCurrentProfileIds()[I

    move-result-object v2

    .line 188
    .local v2, "userIds":[I
    array-length v0, v2

    .line 189
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 190
    aget v3, v2, v1

    invoke-direct {p0, v3}, Lorg/cyanogenmod/platform/internal/ManagedServices;->disableNonexistentServices(I)V

    .line 189
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 186
    :cond_0
    return-void
.end method

.method private disableNonexistentServices(I)V
    .locals 16
    .param p1, "userId"    # I

    .prologue
    .line 196
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/cyanogenmod/platform/internal/ManagedServices;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    .line 197
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/cyanogenmod/platform/internal/ManagedServices;->mConfig:Lorg/cyanogenmod/platform/internal/ManagedServices$Config;

    iget-object v14, v14, Lorg/cyanogenmod/platform/internal/ManagedServices$Config;->secureSettingName:Ljava/lang/String;

    .line 195
    move/from16 v0, p1

    invoke-static {v13, v14, v0}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 199
    .local v4, "flatIn":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_8

    .line 200
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lorg/cyanogenmod/platform/internal/ManagedServices;->DEBUG:Z

    if-eqz v13, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/cyanogenmod/platform/internal/ManagedServices;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "flat before: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/cyanogenmod/platform/internal/ManagedServices;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    .line 203
    .local v10, "pm":Landroid/content/pm/PackageManager;
    new-instance v13, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/cyanogenmod/platform/internal/ManagedServices;->mConfig:Lorg/cyanogenmod/platform/internal/ManagedServices$Config;

    iget-object v14, v14, Lorg/cyanogenmod/platform/internal/ManagedServices$Config;->serviceInterface:Ljava/lang/String;

    invoke-direct {v13, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 204
    const/16 v14, 0x84

    .line 202
    move/from16 v0, p1

    invoke-virtual {v10, v13, v14, v0}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v9

    .line 206
    .local v9, "installedServices":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lorg/cyanogenmod/platform/internal/ManagedServices;->DEBUG:Z

    if-eqz v13, :cond_1

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/cyanogenmod/platform/internal/ManagedServices;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/cyanogenmod/platform/internal/ManagedServices;->mConfig:Lorg/cyanogenmod/platform/internal/ManagedServices$Config;

    iget-object v15, v15, Lorg/cyanogenmod/platform/internal/ManagedServices$Config;->serviceInterface:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " services: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    :cond_1
    new-instance v8, Landroid/util/ArraySet;

    invoke-direct {v8}, Landroid/util/ArraySet;-><init>()V

    .line 208
    .local v8, "installed":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    const/4 v6, 0x0

    .local v6, "i":I
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v1

    .local v1, "count":I
    :goto_0
    if-ge v6, v1, :cond_3

    .line 209
    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/pm/ResolveInfo;

    .line 210
    .local v12, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v7, v12, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 212
    .local v7, "info":Landroid/content/pm/ServiceInfo;
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/cyanogenmod/platform/internal/ManagedServices;->mConfig:Lorg/cyanogenmod/platform/internal/ManagedServices$Config;

    iget-object v13, v13, Lorg/cyanogenmod/platform/internal/ManagedServices$Config;->bindPermission:Ljava/lang/String;

    iget-object v14, v7, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_2

    .line 213
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/cyanogenmod/platform/internal/ManagedServices;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Skipping "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-direct/range {p0 .. p0}, Lorg/cyanogenmod/platform/internal/ManagedServices;->getCaption()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " service "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 214
    iget-object v15, v7, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 213
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 214
    const-string/jumbo v15, "/"

    .line 213
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 214
    iget-object v15, v7, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 213
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 215
    const-string/jumbo v15, ": it does not require the permission "

    .line 213
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 216
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/cyanogenmod/platform/internal/ManagedServices;->mConfig:Lorg/cyanogenmod/platform/internal/ManagedServices$Config;

    iget-object v15, v15, Lorg/cyanogenmod/platform/internal/ManagedServices$Config;->bindPermission:Ljava/lang/String;

    .line 213
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 219
    :cond_2
    new-instance v13, Landroid/content/ComponentName;

    iget-object v14, v7, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v15, v7, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v13, v14, v15}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v8, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 222
    .end local v7    # "info":Landroid/content/pm/ServiceInfo;
    .end local v12    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_3
    const-string/jumbo v5, ""

    .line 223
    .local v5, "flatOut":Ljava/lang/String;
    invoke-interface {v8}, Ljava/util/Set;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_6

    .line 224
    const-string/jumbo v13, ":"

    invoke-virtual {v4, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 225
    .local v2, "enabled":[Ljava/lang/String;
    new-instance v11, Ljava/util/ArrayList;

    array-length v13, v2

    invoke-direct {v11, v13}, Ljava/util/ArrayList;-><init>(I)V

    .line 226
    .local v11, "remaining":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v6, 0x0

    :goto_2
    array-length v13, v2

    if-ge v6, v13, :cond_5

    .line 227
    aget-object v13, v2, v6

    invoke-static {v13}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v3

    .line 228
    .local v3, "enabledComponent":Landroid/content/ComponentName;
    invoke-interface {v8, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 229
    aget-object v13, v2, v6

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 226
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 232
    .end local v3    # "enabledComponent":Landroid/content/ComponentName;
    :cond_5
    const-string/jumbo v13, ":"

    invoke-static {v13, v11}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v5

    .line 234
    .end local v2    # "enabled":[Ljava/lang/String;
    .end local v11    # "remaining":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lorg/cyanogenmod/platform/internal/ManagedServices;->DEBUG:Z

    if-eqz v13, :cond_7

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/cyanogenmod/platform/internal/ManagedServices;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "flat after: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    :cond_7
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_8

    .line 236
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/cyanogenmod/platform/internal/ManagedServices;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    .line 237
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/cyanogenmod/platform/internal/ManagedServices;->mConfig:Lorg/cyanogenmod/platform/internal/ManagedServices$Config;

    iget-object v14, v14, Lorg/cyanogenmod/platform/internal/ManagedServices$Config;->secureSettingName:Ljava/lang/String;

    .line 236
    move/from16 v0, p1

    invoke-static {v13, v14, v5, v0}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 194
    .end local v1    # "count":I
    .end local v5    # "flatOut":Ljava/lang/String;
    .end local v6    # "i":I
    .end local v8    # "installed":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    .end local v9    # "installedServices":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v10    # "pm":Landroid/content/pm/PackageManager;
    :cond_8
    return-void
.end method

.method private getCaption()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/ManagedServices;->mConfig:Lorg/cyanogenmod/platform/internal/ManagedServices$Config;

    iget-object v0, v0, Lorg/cyanogenmod/platform/internal/ManagedServices$Config;->caption:Ljava/lang/String;

    return-object v0
.end method

.method private newServiceInfo(Landroid/os/IInterface;Landroid/content/ComponentName;IZLandroid/content/ServiceConnection;I)Lorg/cyanogenmod/platform/internal/ManagedServices$ManagedServiceInfo;
    .locals 8
    .param p1, "service"    # Landroid/os/IInterface;
    .param p2, "component"    # Landroid/content/ComponentName;
    .param p3, "userid"    # I
    .param p4, "isSystem"    # Z
    .param p5, "connection"    # Landroid/content/ServiceConnection;
    .param p6, "targetSdkVersion"    # I

    .prologue
    .line 116
    new-instance v0, Lorg/cyanogenmod/platform/internal/ManagedServices$ManagedServiceInfo;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lorg/cyanogenmod/platform/internal/ManagedServices$ManagedServiceInfo;-><init>(Lorg/cyanogenmod/platform/internal/ManagedServices;Landroid/os/IInterface;Landroid/content/ComponentName;IZLandroid/content/ServiceConnection;I)V

    return-object v0
.end method

.method private rebindServices()V
    .locals 25

    .prologue
    .line 248
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/cyanogenmod/platform/internal/ManagedServices;->DEBUG:Z

    move/from16 v21, v0

    if-eqz v21, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cyanogenmod/platform/internal/ManagedServices;->TAG:Ljava/lang/String;

    move-object/from16 v21, v0

    const-string/jumbo v22, "rebindServices"

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cyanogenmod/platform/internal/ManagedServices;->mUserProfiles:Lorg/cyanogenmod/platform/internal/ManagedServices$UserProfiles;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lorg/cyanogenmod/platform/internal/ManagedServices$UserProfiles;->getCurrentProfileIds()[I

    move-result-object v20

    .line 250
    .local v20, "userIds":[I
    move-object/from16 v0, v20

    array-length v11, v0

    .line 252
    .local v11, "nUserIds":I
    new-instance v6, Landroid/util/SparseArray;

    invoke-direct {v6}, Landroid/util/SparseArray;-><init>()V

    .line 254
    .local v6, "flat":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v11, :cond_1

    .line 255
    aget v21, v20, v7

    .line 256
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cyanogenmod/platform/internal/ManagedServices;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v22

    .line 257
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cyanogenmod/platform/internal/ManagedServices;->mConfig:Lorg/cyanogenmod/platform/internal/ManagedServices$Config;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/cyanogenmod/platform/internal/ManagedServices$Config;->secureSettingName:Ljava/lang/String;

    move-object/from16 v23, v0

    .line 258
    aget v24, v20, v7

    .line 255
    invoke-static/range {v22 .. v24}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v22

    move/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v6, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 254
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 261
    :cond_1
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 263
    .local v19, "toRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/cyanogenmod/platform/internal/ManagedServices$ManagedServiceInfo;>;"
    new-instance v17, Landroid/util/SparseArray;

    invoke-direct/range {v17 .. v17}, Landroid/util/SparseArray;-><init>()V

    .line 265
    .local v17, "toAdd":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/ArrayList<Landroid/content/ComponentName;>;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cyanogenmod/platform/internal/ManagedServices;->mMutex:Ljava/lang/Object;

    move-object/from16 v22, v0

    monitor-enter v22

    .line 267
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cyanogenmod/platform/internal/ManagedServices;->mServices:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, "service$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_3

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/cyanogenmod/platform/internal/ManagedServices$ManagedServiceInfo;

    .line 268
    .local v15, "service":Lorg/cyanogenmod/platform/internal/ManagedServices$ManagedServiceInfo;
    iget-boolean v0, v15, Lorg/cyanogenmod/platform/internal/ManagedServices$ManagedServiceInfo;->isSystem:Z

    move/from16 v21, v0

    if-nez v21, :cond_2

    .line 269
    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 265
    .end local v15    # "service":Lorg/cyanogenmod/platform/internal/ManagedServices$ManagedServiceInfo;
    .end local v16    # "service$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v21

    monitor-exit v22

    throw v21

    .line 273
    .restart local v16    # "service$iterator":Ljava/util/Iterator;
    :cond_3
    :try_start_1
    new-instance v12, Landroid/util/ArraySet;

    invoke-direct {v12}, Landroid/util/ArraySet;-><init>()V

    .line 274
    .local v12, "newEnabled":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/content/ComponentName;>;"
    new-instance v13, Landroid/util/ArraySet;

    invoke-direct {v13}, Landroid/util/ArraySet;-><init>()V

    .line 276
    .local v13, "newPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const/4 v7, 0x0

    :goto_2
    if-ge v7, v11, :cond_6

    .line 277
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 278
    .local v3, "add":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    aget v21, v20, v7

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 281
    aget v21, v20, v7

    move/from16 v0, v21

    invoke-virtual {v6, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 282
    .local v18, "toDecode":Ljava/lang/String;
    if-eqz v18, :cond_5

    .line 283
    const-string/jumbo v21, ":"

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 284
    .local v5, "components":[Ljava/lang/String;
    const/4 v10, 0x0

    .local v10, "j":I
    :goto_3
    array-length v0, v5

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v10, v0, :cond_5

    .line 286
    aget-object v21, v5, v10

    invoke-static/range {v21 .. v21}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v4

    .line 287
    .local v4, "component":Landroid/content/ComponentName;
    if-eqz v4, :cond_4

    .line 288
    invoke-virtual {v12, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 289
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 290
    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 284
    :cond_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 276
    .end local v4    # "component":Landroid/content/ComponentName;
    .end local v5    # "components":[Ljava/lang/String;
    .end local v10    # "j":I
    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 296
    .end local v3    # "add":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    .end local v18    # "toDecode":Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p0

    iput-object v12, v0, Lorg/cyanogenmod/platform/internal/ManagedServices;->mEnabledServicesForCurrentProfiles:Landroid/util/ArraySet;

    .line 297
    move-object/from16 v0, p0

    iput-object v13, v0, Lorg/cyanogenmod/platform/internal/ManagedServices;->mEnabledServicesPackageNames:Landroid/util/ArraySet;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v22

    .line 300
    invoke-interface/range {v19 .. v19}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "info$iterator":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_7

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/cyanogenmod/platform/internal/ManagedServices$ManagedServiceInfo;

    .line 301
    .local v8, "info":Lorg/cyanogenmod/platform/internal/ManagedServices$ManagedServiceInfo;
    iget-object v4, v8, Lorg/cyanogenmod/platform/internal/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    .line 302
    .restart local v4    # "component":Landroid/content/ComponentName;
    iget v14, v8, Lorg/cyanogenmod/platform/internal/ManagedServices$ManagedServiceInfo;->userid:I

    .line 303
    .local v14, "oldUser":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cyanogenmod/platform/internal/ManagedServices;->TAG:Ljava/lang/String;

    move-object/from16 v21, v0

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "disabling "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-direct/range {p0 .. p0}, Lorg/cyanogenmod/platform/internal/ManagedServices;->getCaption()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, " for user "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    .line 304
    const-string/jumbo v23, ": "

    .line 303
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    iget v0, v8, Lorg/cyanogenmod/platform/internal/ManagedServices$ManagedServiceInfo;->userid:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v4, v1}, Lorg/cyanogenmod/platform/internal/ManagedServices;->unregisterService(Landroid/content/ComponentName;I)V

    goto :goto_4

    .line 308
    .end local v4    # "component":Landroid/content/ComponentName;
    .end local v8    # "info":Lorg/cyanogenmod/platform/internal/ManagedServices$ManagedServiceInfo;
    .end local v14    # "oldUser":I
    :cond_7
    const/4 v7, 0x0

    :goto_5
    if-ge v7, v11, :cond_9

    .line 309
    aget v21, v20, v7

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 310
    .restart local v3    # "add":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 311
    .local v2, "N":I
    const/4 v10, 0x0

    .restart local v10    # "j":I
    :goto_6
    if-ge v10, v2, :cond_8

    .line 312
    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 313
    .restart local v4    # "component":Landroid/content/ComponentName;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cyanogenmod/platform/internal/ManagedServices;->TAG:Ljava/lang/String;

    move-object/from16 v21, v0

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "enabling "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-direct/range {p0 .. p0}, Lorg/cyanogenmod/platform/internal/ManagedServices;->getCaption()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, " for user "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    aget v23, v20, v7

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, ": "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    aget v21, v20, v7

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v4, v1}, Lorg/cyanogenmod/platform/internal/ManagedServices;->registerService(Landroid/content/ComponentName;I)V

    .line 311
    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    .line 308
    .end local v4    # "component":Landroid/content/ComponentName;
    :cond_8
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 319
    .end local v2    # "N":I
    .end local v3    # "add":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    .end local v10    # "j":I
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cyanogenmod/platform/internal/ManagedServices;->mUserProfiles:Lorg/cyanogenmod/platform/internal/ManagedServices$UserProfiles;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lorg/cyanogenmod/platform/internal/ManagedServices$UserProfiles;->getCurrentProfileIds()[I

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/cyanogenmod/platform/internal/ManagedServices;->mLastSeenProfileIds:[I

    .line 247
    return-void
.end method

.method private registerService(Landroid/content/ComponentName;I)V
    .locals 17
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "userid"    # I

    .prologue
    .line 326
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lorg/cyanogenmod/platform/internal/ManagedServices;->DEBUG:Z

    if-eqz v12, :cond_0

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/cyanogenmod/platform/internal/ManagedServices;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "registerService: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, " u="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/cyanogenmod/platform/internal/ManagedServices;->mMutex:Ljava/lang/Object;

    monitor-enter v13

    .line 329
    :try_start_0
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v14, "/"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 330
    .local v10, "servicesBindingTag":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/cyanogenmod/platform/internal/ManagedServices;->mServicesBinding:Ljava/util/ArrayList;

    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v12

    if-eqz v12, :cond_1

    monitor-exit v13

    .line 332
    return-void

    .line 334
    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/cyanogenmod/platform/internal/ManagedServices;->mServicesBinding:Ljava/util/ArrayList;

    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 336
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/cyanogenmod/platform/internal/ManagedServices;->mServices:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 337
    .local v2, "N":I
    add-int/lit8 v6, v2, -0x1

    .local v6, "i":I
    :goto_0
    if-ltz v6, :cond_4

    .line 338
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/cyanogenmod/platform/internal/ManagedServices;->mServices:Ljava/util/ArrayList;

    invoke-virtual {v12, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/cyanogenmod/platform/internal/ManagedServices$ManagedServiceInfo;

    .line 339
    .local v7, "info":Lorg/cyanogenmod/platform/internal/ManagedServices$ManagedServiceInfo;
    iget-object v12, v7, Lorg/cyanogenmod/platform/internal/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 340
    iget v12, v7, Lorg/cyanogenmod/platform/internal/ManagedServices$ManagedServiceInfo;->userid:I

    move/from16 v0, p2

    if-ne v12, v0, :cond_3

    .line 342
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lorg/cyanogenmod/platform/internal/ManagedServices;->DEBUG:Z

    if-eqz v12, :cond_2

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/cyanogenmod/platform/internal/ManagedServices;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "    disconnecting old "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-direct/range {p0 .. p0}, Lorg/cyanogenmod/platform/internal/ManagedServices;->getCaption()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, ": "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 343
    iget-object v15, v7, Lorg/cyanogenmod/platform/internal/ManagedServices$ManagedServiceInfo;->service:Landroid/os/IInterface;

    .line 342
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v14}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    :cond_2
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lorg/cyanogenmod/platform/internal/ManagedServices;->removeServiceLocked(I)Lorg/cyanogenmod/platform/internal/ManagedServices$ManagedServiceInfo;

    .line 345
    iget-object v12, v7, Lorg/cyanogenmod/platform/internal/ManagedServices$ManagedServiceInfo;->connection:Landroid/content/ServiceConnection;

    if-eqz v12, :cond_3

    .line 346
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/cyanogenmod/platform/internal/ManagedServices;->mContext:Landroid/content/Context;

    iget-object v14, v7, Lorg/cyanogenmod/platform/internal/ManagedServices$ManagedServiceInfo;->connection:Landroid/content/ServiceConnection;

    invoke-virtual {v12, v14}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 337
    :cond_3
    add-int/lit8 v6, v6, -0x1

    goto :goto_0

    .line 351
    .end local v7    # "info":Lorg/cyanogenmod/platform/internal/ManagedServices$ManagedServiceInfo;
    :cond_4
    new-instance v8, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/cyanogenmod/platform/internal/ManagedServices;->mConfig:Lorg/cyanogenmod/platform/internal/ManagedServices$Config;

    iget-object v12, v12, Lorg/cyanogenmod/platform/internal/ManagedServices$Config;->serviceInterface:Ljava/lang/String;

    invoke-direct {v8, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 352
    .local v8, "intent":Landroid/content/Intent;
    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 354
    const-string/jumbo v12, "android.intent.extra.client_label"

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/cyanogenmod/platform/internal/ManagedServices;->mConfig:Lorg/cyanogenmod/platform/internal/ManagedServices$Config;

    iget v14, v14, Lorg/cyanogenmod/platform/internal/ManagedServices$Config;->clientLabel:I

    invoke-virtual {v8, v12, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 357
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/cyanogenmod/platform/internal/ManagedServices;->mContext:Landroid/content/Context;

    new-instance v14, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/cyanogenmod/platform/internal/ManagedServices;->mConfig:Lorg/cyanogenmod/platform/internal/ManagedServices$Config;

    iget-object v15, v15, Lorg/cyanogenmod/platform/internal/ManagedServices$Config;->settingsAction:Ljava/lang/String;

    invoke-direct {v14, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v15, 0x0

    const/16 v16, 0x0

    .line 356
    move/from16 v0, v16

    invoke-static {v12, v15, v14, v0}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v9

    .line 358
    .local v9, "pendingIntent":Landroid/app/PendingIntent;
    const-string/jumbo v12, "android.intent.extra.client_intent"

    invoke-virtual {v8, v12, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 360
    const/4 v3, 0x0

    .line 362
    .local v3, "appInfo":Landroid/content/pm/ApplicationInfo;
    :try_start_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/cyanogenmod/platform/internal/ManagedServices;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    .line 363
    invoke-virtual/range {p1 .. p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    .line 362
    invoke-virtual {v12, v14, v15}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v3

    .line 368
    .end local v3    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :goto_1
    if-eqz v3, :cond_6

    :try_start_3
    iget v11, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 371
    .local v11, "targetSdkVersion":I
    :goto_2
    :try_start_4
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lorg/cyanogenmod/platform/internal/ManagedServices;->DEBUG:Z

    if-eqz v12, :cond_5

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/cyanogenmod/platform/internal/ManagedServices;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "binding: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v14}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    :cond_5
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/cyanogenmod/platform/internal/ManagedServices;->mContext:Landroid/content/Context;

    .line 373
    new-instance v14, Lorg/cyanogenmod/platform/internal/ManagedServices$1;

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v14, v0, v10, v1, v11}, Lorg/cyanogenmod/platform/internal/ManagedServices$1;-><init>(Lorg/cyanogenmod/platform/internal/ManagedServices;Ljava/lang/String;II)V

    .line 403
    new-instance v15, Landroid/os/UserHandle;

    move/from16 v0, p2

    invoke-direct {v15, v0}, Landroid/os/UserHandle;-><init>(I)V

    .line 402
    const/16 v16, 0x1

    .line 372
    move/from16 v0, v16

    invoke-virtual {v12, v8, v14, v0, v15}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v12

    if-nez v12, :cond_7

    .line 405
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/cyanogenmod/platform/internal/ManagedServices;->mServicesBinding:Ljava/util/ArrayList;

    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 406
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/cyanogenmod/platform/internal/ManagedServices;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Unable to bind "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-direct/range {p0 .. p0}, Lorg/cyanogenmod/platform/internal/ManagedServices;->getCaption()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " service: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit v13

    .line 407
    return-void

    .line 368
    .end local v11    # "targetSdkVersion":I
    :cond_6
    const/4 v11, 0x1

    .restart local v11    # "targetSdkVersion":I
    goto :goto_2

    .line 409
    :catch_0
    move-exception v5

    .line 410
    .local v5, "ex":Ljava/lang/SecurityException;
    :try_start_5
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/cyanogenmod/platform/internal/ManagedServices;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Unable to bind "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-direct/range {p0 .. p0}, Lorg/cyanogenmod/platform/internal/ManagedServices;->getCaption()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " service: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v14, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit v13

    .line 411
    return-void

    .end local v5    # "ex":Ljava/lang/SecurityException;
    :cond_7
    monitor-exit v13

    .line 325
    return-void

    .line 328
    .end local v2    # "N":I
    .end local v6    # "i":I
    .end local v8    # "intent":Landroid/content/Intent;
    .end local v9    # "pendingIntent":Landroid/app/PendingIntent;
    .end local v10    # "servicesBindingTag":Ljava/lang/String;
    .end local v11    # "targetSdkVersion":I
    :catchall_0
    move-exception v12

    monitor-exit v13

    throw v12

    .line 364
    .restart local v2    # "N":I
    .restart local v3    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v6    # "i":I
    .restart local v8    # "intent":Landroid/content/Intent;
    .restart local v9    # "pendingIntent":Landroid/app/PendingIntent;
    .restart local v10    # "servicesBindingTag":Ljava/lang/String;
    :catch_1
    move-exception v4

    .local v4, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto/16 :goto_1
.end method

.method private registerServiceImpl(Landroid/os/IInterface;Landroid/content/ComponentName;I)Lorg/cyanogenmod/platform/internal/ManagedServices$ManagedServiceInfo;
    .locals 11
    .param p1, "service"    # Landroid/os/IInterface;
    .param p2, "component"    # Landroid/content/ComponentName;
    .param p3, "userid"    # I

    .prologue
    const/4 v10, 0x0

    .line 477
    iget-object v9, p0, Lorg/cyanogenmod/platform/internal/ManagedServices;->mMutex:Ljava/lang/Object;

    monitor-enter v9

    .line 480
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/16 v6, 0x15

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    .line 479
    :try_start_0
    invoke-direct/range {v0 .. v6}, Lorg/cyanogenmod/platform/internal/ManagedServices;->newServiceInfo(Landroid/os/IInterface;Landroid/content/ComponentName;IZLandroid/content/ServiceConnection;I)Lorg/cyanogenmod/platform/internal/ManagedServices$ManagedServiceInfo;

    move-result-object v8

    .line 481
    .local v8, "info":Lorg/cyanogenmod/platform/internal/ManagedServices$ManagedServiceInfo;
    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v8, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 482
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/ManagedServices;->mServices:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v9

    .line 483
    return-object v8

    .line 484
    .end local v8    # "info":Lorg/cyanogenmod/platform/internal/ManagedServices$ManagedServiceInfo;
    :catch_0
    move-exception v7

    .local v7, "e":Landroid/os/RemoteException;
    monitor-exit v9

    .line 488
    return-object v10

    .line 477
    .end local v7    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v0

    monitor-exit v9

    throw v0
.end method

.method private removeServiceImpl(Landroid/os/IInterface;I)Lorg/cyanogenmod/platform/internal/ManagedServices$ManagedServiceInfo;
    .locals 8
    .param p1, "service"    # Landroid/os/IInterface;
    .param p2, "userid"    # I

    .prologue
    .line 447
    iget-boolean v4, p0, Lorg/cyanogenmod/platform/internal/ManagedServices;->DEBUG:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Lorg/cyanogenmod/platform/internal/ManagedServices;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "removeServiceImpl service="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " u="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    :cond_0
    const/4 v3, 0x0

    .line 449
    .local v3, "serviceInfo":Lorg/cyanogenmod/platform/internal/ManagedServices$ManagedServiceInfo;
    iget-object v5, p0, Lorg/cyanogenmod/platform/internal/ManagedServices;->mMutex:Ljava/lang/Object;

    monitor-enter v5

    .line 450
    :try_start_0
    iget-object v4, p0, Lorg/cyanogenmod/platform/internal/ManagedServices;->mServices:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 451
    .local v0, "N":I
    add-int/lit8 v1, v0, -0x1

    .end local v3    # "serviceInfo":Lorg/cyanogenmod/platform/internal/ManagedServices$ManagedServiceInfo;
    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_3

    .line 452
    iget-object v4, p0, Lorg/cyanogenmod/platform/internal/ManagedServices;->mServices:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/cyanogenmod/platform/internal/ManagedServices$ManagedServiceInfo;

    .line 453
    .local v2, "info":Lorg/cyanogenmod/platform/internal/ManagedServices$ManagedServiceInfo;
    iget-object v4, v2, Lorg/cyanogenmod/platform/internal/ManagedServices$ManagedServiceInfo;->service:Landroid/os/IInterface;

    invoke-interface {v4}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    if-ne v4, v6, :cond_2

    .line 454
    iget v4, v2, Lorg/cyanogenmod/platform/internal/ManagedServices$ManagedServiceInfo;->userid:I

    if-ne v4, p2, :cond_2

    .line 455
    iget-boolean v4, p0, Lorg/cyanogenmod/platform/internal/ManagedServices;->DEBUG:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Lorg/cyanogenmod/platform/internal/ManagedServices;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Removing active service "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v2, Lorg/cyanogenmod/platform/internal/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    :cond_1
    invoke-direct {p0, v1}, Lorg/cyanogenmod/platform/internal/ManagedServices;->removeServiceLocked(I)Lorg/cyanogenmod/platform/internal/ManagedServices$ManagedServiceInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 451
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .end local v2    # "info":Lorg/cyanogenmod/platform/internal/ManagedServices$ManagedServiceInfo;
    :cond_3
    monitor-exit v5

    .line 460
    return-object v3

    .line 449
    .end local v0    # "N":I
    .end local v1    # "i":I
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method private removeServiceLocked(I)Lorg/cyanogenmod/platform/internal/ManagedServices$ManagedServiceInfo;
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 464
    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/ManagedServices;->mServices:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cyanogenmod/platform/internal/ManagedServices$ManagedServiceInfo;

    .line 465
    .local v0, "info":Lorg/cyanogenmod/platform/internal/ManagedServices$ManagedServiceInfo;
    invoke-virtual {p0, v0}, Lorg/cyanogenmod/platform/internal/ManagedServices;->onServiceRemovedLocked(Lorg/cyanogenmod/platform/internal/ManagedServices$ManagedServiceInfo;)V

    .line 466
    return-object v0
.end method

.method private unregisterService(Landroid/content/ComponentName;I)V
    .locals 8
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "userid"    # I

    .prologue
    .line 420
    iget-object v5, p0, Lorg/cyanogenmod/platform/internal/ManagedServices;->mMutex:Ljava/lang/Object;

    monitor-enter v5

    .line 421
    :try_start_0
    iget-object v4, p0, Lorg/cyanogenmod/platform/internal/ManagedServices;->mServices:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 422
    .local v0, "N":I
    add-int/lit8 v2, v0, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    .line 423
    iget-object v4, p0, Lorg/cyanogenmod/platform/internal/ManagedServices;->mServices:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/cyanogenmod/platform/internal/ManagedServices$ManagedServiceInfo;

    .line 424
    .local v3, "info":Lorg/cyanogenmod/platform/internal/ManagedServices$ManagedServiceInfo;
    iget-object v4, v3, Lorg/cyanogenmod/platform/internal/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {p1, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 425
    iget v4, v3, Lorg/cyanogenmod/platform/internal/ManagedServices$ManagedServiceInfo;->userid:I

    if-ne v4, p2, :cond_0

    .line 426
    invoke-direct {p0, v2}, Lorg/cyanogenmod/platform/internal/ManagedServices;->removeServiceLocked(I)Lorg/cyanogenmod/platform/internal/ManagedServices$ManagedServiceInfo;

    .line 427
    iget-object v4, v3, Lorg/cyanogenmod/platform/internal/ManagedServices$ManagedServiceInfo;->connection:Landroid/content/ServiceConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_0

    .line 429
    :try_start_1
    iget-object v4, p0, Lorg/cyanogenmod/platform/internal/ManagedServices;->mContext:Landroid/content/Context;

    iget-object v6, v3, Lorg/cyanogenmod/platform/internal/ManagedServices$ManagedServiceInfo;->connection:Landroid/content/ServiceConnection;

    invoke-virtual {v4, v6}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 422
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 430
    :catch_0
    move-exception v1

    .line 433
    .local v1, "ex":Ljava/lang/IllegalArgumentException;
    :try_start_2
    iget-object v4, p0, Lorg/cyanogenmod/platform/internal/ManagedServices;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lorg/cyanogenmod/platform/internal/ManagedServices;->getCaption()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " could not be unbound: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 420
    .end local v0    # "N":I
    .end local v1    # "ex":Ljava/lang/IllegalArgumentException;
    .end local v2    # "i":I
    .end local v3    # "info":Lorg/cyanogenmod/platform/internal/ManagedServices$ManagedServiceInfo;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .restart local v0    # "N":I
    .restart local v2    # "i":I
    :cond_1
    monitor-exit v5

    .line 419
    return-void
.end method

.method private unregisterServiceImpl(Landroid/os/IInterface;I)V
    .locals 3
    .param p1, "service"    # Landroid/os/IInterface;
    .param p2, "userid"    # I

    .prologue
    .line 495
    invoke-direct {p0, p1, p2}, Lorg/cyanogenmod/platform/internal/ManagedServices;->removeServiceImpl(Landroid/os/IInterface;I)Lorg/cyanogenmod/platform/internal/ManagedServices$ManagedServiceInfo;

    move-result-object v0

    .line 496
    .local v0, "info":Lorg/cyanogenmod/platform/internal/ManagedServices$ManagedServiceInfo;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lorg/cyanogenmod/platform/internal/ManagedServices$ManagedServiceInfo;->connection:Landroid/content/ServiceConnection;

    if-eqz v1, :cond_0

    .line 497
    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/ManagedServices;->mContext:Landroid/content/Context;

    iget-object v2, v0, Lorg/cyanogenmod/platform/internal/ManagedServices$ManagedServiceInfo;->connection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 494
    :cond_0
    return-void
.end method


# virtual methods
.method protected abstract asInterface(Landroid/os/IBinder;)Landroid/os/IInterface;
.end method

.method public checkServiceTokenLocked(Landroid/os/IInterface;)Lorg/cyanogenmod/platform/internal/ManagedServices$ManagedServiceInfo;
    .locals 7
    .param p1, "service"    # Landroid/os/IInterface;

    .prologue
    .line 157
    invoke-direct {p0, p1}, Lorg/cyanogenmod/platform/internal/ManagedServices;->checkNotNull(Landroid/os/IInterface;)V

    .line 158
    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 159
    .local v3, "token":Landroid/os/IBinder;
    iget-object v4, p0, Lorg/cyanogenmod/platform/internal/ManagedServices;->mServices:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 160
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 161
    iget-object v4, p0, Lorg/cyanogenmod/platform/internal/ManagedServices;->mServices:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/cyanogenmod/platform/internal/ManagedServices$ManagedServiceInfo;

    .line 162
    .local v2, "info":Lorg/cyanogenmod/platform/internal/ManagedServices$ManagedServiceInfo;
    iget-object v4, v2, Lorg/cyanogenmod/platform/internal/ManagedServices$ManagedServiceInfo;->service:Landroid/os/IInterface;

    invoke-interface {v4}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    if-ne v4, v3, :cond_0

    return-object v2

    .line 160
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 164
    .end local v2    # "info":Lorg/cyanogenmod/platform/internal/ManagedServices$ManagedServiceInfo;
    :cond_1
    new-instance v4, Ljava/lang/SecurityException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Disallowed call from unknown "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct {p0}, Lorg/cyanogenmod/platform/internal/ManagedServices;->getCaption()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method protected abstract getConfig()Lorg/cyanogenmod/platform/internal/ManagedServices$Config;
.end method

.method public onBootPhaseAppsCanStart()V
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/ManagedServices;->mSettingsObserver:Lorg/cyanogenmod/platform/internal/ManagedServices$SettingsObserver;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/ManagedServices$SettingsObserver;->-wrap0(Lorg/cyanogenmod/platform/internal/ManagedServices$SettingsObserver;)V

    .line 120
    return-void
.end method

.method public onPackagesChanged(Z[Ljava/lang/String;)V
    .locals 7
    .param p1, "queryReplace"    # Z
    .param p2, "pkgList"    # [Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 125
    iget-boolean v4, p0, Lorg/cyanogenmod/platform/internal/ManagedServices;->DEBUG:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Lorg/cyanogenmod/platform/internal/ManagedServices;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onPackagesChanged queryReplace="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 126
    const-string/jumbo v6, " pkgList="

    .line 125
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 126
    if-nez p2, :cond_2

    .line 125
    :goto_0
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 127
    const-string/jumbo v5, " mEnabledServicesPackageNames="

    .line 125
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 127
    iget-object v5, p0, Lorg/cyanogenmod/platform/internal/ManagedServices;->mEnabledServicesPackageNames:Landroid/util/ArraySet;

    .line 125
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    :cond_0
    const/4 v0, 0x0

    .line 129
    .local v0, "anyServicesInvolved":Z
    if-eqz p2, :cond_3

    array-length v2, p2

    if-lez v2, :cond_3

    .line 130
    array-length v4, p2

    move v2, v3

    :goto_1
    if-ge v2, v4, :cond_3

    aget-object v1, p2, v2

    .line 131
    .local v1, "pkgName":Ljava/lang/String;
    iget-object v3, p0, Lorg/cyanogenmod/platform/internal/ManagedServices;->mEnabledServicesPackageNames:Landroid/util/ArraySet;

    invoke-virtual {v3, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 132
    const/4 v0, 0x1

    .line 130
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 126
    .end local v0    # "anyServicesInvolved":Z
    .end local v1    # "pkgName":Ljava/lang/String;
    :cond_2
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    goto :goto_0

    .line 137
    .restart local v0    # "anyServicesInvolved":Z
    :cond_3
    if-eqz v0, :cond_5

    .line 139
    if-nez p1, :cond_4

    .line 140
    invoke-direct {p0}, Lorg/cyanogenmod/platform/internal/ManagedServices;->disableNonexistentServices()V

    .line 143
    :cond_4
    invoke-direct {p0}, Lorg/cyanogenmod/platform/internal/ManagedServices;->rebindServices()V

    .line 124
    :cond_5
    return-void
.end method

.method protected abstract onServiceAdded(Lorg/cyanogenmod/platform/internal/ManagedServices$ManagedServiceInfo;)V
.end method

.method protected onServiceRemovedLocked(Lorg/cyanogenmod/platform/internal/ManagedServices$ManagedServiceInfo;)V
    .locals 0
    .param p1, "removed"    # Lorg/cyanogenmod/platform/internal/ManagedServices$ManagedServiceInfo;

    .prologue
    .line 111
    return-void
.end method

.method public onUserSwitched()V
    .locals 2

    .prologue
    .line 148
    iget-boolean v0, p0, Lorg/cyanogenmod/platform/internal/ManagedServices;->DEBUG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/ManagedServices;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onUserSwitched"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    :cond_0
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/ManagedServices;->mLastSeenProfileIds:[I

    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/ManagedServices;->mUserProfiles:Lorg/cyanogenmod/platform/internal/ManagedServices$UserProfiles;

    invoke-virtual {v1}, Lorg/cyanogenmod/platform/internal/ManagedServices$UserProfiles;->getCurrentProfileIds()[I

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 150
    iget-boolean v0, p0, Lorg/cyanogenmod/platform/internal/ManagedServices;->DEBUG:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/ManagedServices;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Current profile IDs didn\'t change, skipping rebindServices()."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    :cond_1
    return-void

    .line 153
    :cond_2
    invoke-direct {p0}, Lorg/cyanogenmod/platform/internal/ManagedServices;->rebindServices()V

    .line 147
    return-void
.end method

.method public registerService(Landroid/os/IInterface;Landroid/content/ComponentName;I)V
    .locals 1
    .param p1, "service"    # Landroid/os/IInterface;
    .param p2, "component"    # Landroid/content/ComponentName;
    .param p3, "userid"    # I

    .prologue
    .line 176
    invoke-direct {p0, p1}, Lorg/cyanogenmod/platform/internal/ManagedServices;->checkNotNull(Landroid/os/IInterface;)V

    .line 177
    invoke-direct {p0, p1, p2, p3}, Lorg/cyanogenmod/platform/internal/ManagedServices;->registerServiceImpl(Landroid/os/IInterface;Landroid/content/ComponentName;I)Lorg/cyanogenmod/platform/internal/ManagedServices$ManagedServiceInfo;

    move-result-object v0

    .line 178
    .local v0, "info":Lorg/cyanogenmod/platform/internal/ManagedServices$ManagedServiceInfo;
    if-eqz v0, :cond_0

    .line 179
    invoke-virtual {p0, v0}, Lorg/cyanogenmod/platform/internal/ManagedServices;->onServiceAdded(Lorg/cyanogenmod/platform/internal/ManagedServices$ManagedServiceInfo;)V

    .line 175
    :cond_0
    return-void
.end method

.method public unregisterService(Landroid/os/IInterface;I)V
    .locals 0
    .param p1, "service"    # Landroid/os/IInterface;
    .param p2, "userid"    # I

    .prologue
    .line 169
    invoke-direct {p0, p1}, Lorg/cyanogenmod/platform/internal/ManagedServices;->checkNotNull(Landroid/os/IInterface;)V

    .line 172
    invoke-direct {p0, p1, p2}, Lorg/cyanogenmod/platform/internal/ManagedServices;->unregisterServiceImpl(Landroid/os/IInterface;I)V

    .line 168
    return-void
.end method
