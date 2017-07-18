.class Lorg/cyanogenmod/platform/internal/ManagedServices$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "ManagedServices.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cyanogenmod/platform/internal/ManagedServices;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingsObserver"
.end annotation


# instance fields
.field private final mSecureSettingsUri:Landroid/net/Uri;

.field final synthetic this$0:Lorg/cyanogenmod/platform/internal/ManagedServices;


# direct methods
.method static synthetic -wrap0(Lorg/cyanogenmod/platform/internal/ManagedServices$SettingsObserver;)V
    .locals 0

    invoke-direct {p0}, Lorg/cyanogenmod/platform/internal/ManagedServices$SettingsObserver;->observe()V

    return-void
.end method

.method private constructor <init>(Lorg/cyanogenmod/platform/internal/ManagedServices;Landroid/os/Handler;)V
    .locals 1
    .param p1, "this$0"    # Lorg/cyanogenmod/platform/internal/ManagedServices;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 504
    iput-object p1, p0, Lorg/cyanogenmod/platform/internal/ManagedServices$SettingsObserver;->this$0:Lorg/cyanogenmod/platform/internal/ManagedServices;

    .line 505
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 502
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/ManagedServices$SettingsObserver;->this$0:Lorg/cyanogenmod/platform/internal/ManagedServices;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/ManagedServices;->-get0(Lorg/cyanogenmod/platform/internal/ManagedServices;)Lorg/cyanogenmod/platform/internal/ManagedServices$Config;

    move-result-object v0

    iget-object v0, v0, Lorg/cyanogenmod/platform/internal/ManagedServices$Config;->secureSettingName:Ljava/lang/String;

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lorg/cyanogenmod/platform/internal/ManagedServices$SettingsObserver;->mSecureSettingsUri:Landroid/net/Uri;

    .line 504
    return-void
.end method

.method synthetic constructor <init>(Lorg/cyanogenmod/platform/internal/ManagedServices;Landroid/os/Handler;Lorg/cyanogenmod/platform/internal/ManagedServices$SettingsObserver;)V
    .locals 0
    .param p1, "this$0"    # Lorg/cyanogenmod/platform/internal/ManagedServices;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    invoke-direct {p0, p1, p2}, Lorg/cyanogenmod/platform/internal/ManagedServices$SettingsObserver;-><init>(Lorg/cyanogenmod/platform/internal/ManagedServices;Landroid/os/Handler;)V

    return-void
.end method

.method private observe()V
    .locals 4

    .prologue
    .line 509
    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/ManagedServices$SettingsObserver;->this$0:Lorg/cyanogenmod/platform/internal/ManagedServices;

    iget-object v1, v1, Lorg/cyanogenmod/platform/internal/ManagedServices;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 510
    .local v0, "resolver":Landroid/content/ContentResolver;
    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/ManagedServices$SettingsObserver;->mSecureSettingsUri:Landroid/net/Uri;

    .line 511
    const/4 v2, 0x0

    const/4 v3, -0x1

    .line 510
    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 512
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lorg/cyanogenmod/platform/internal/ManagedServices$SettingsObserver;->update(Landroid/net/Uri;)V

    .line 508
    return-void
.end method

.method private update(Landroid/net/Uri;)V
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 521
    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/ManagedServices$SettingsObserver;->mSecureSettingsUri:Landroid/net/Uri;

    invoke-virtual {v0, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 522
    :cond_0
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/ManagedServices$SettingsObserver;->this$0:Lorg/cyanogenmod/platform/internal/ManagedServices;

    iget-boolean v0, v0, Lorg/cyanogenmod/platform/internal/ManagedServices;->DEBUG:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/ManagedServices$SettingsObserver;->this$0:Lorg/cyanogenmod/platform/internal/ManagedServices;

    iget-object v0, v0, Lorg/cyanogenmod/platform/internal/ManagedServices;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Setting changed: mSecureSettingsUri="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/cyanogenmod/platform/internal/ManagedServices$SettingsObserver;->mSecureSettingsUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 523
    const-string/jumbo v2, " / uri="

    .line 522
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    :cond_1
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/ManagedServices$SettingsObserver;->this$0:Lorg/cyanogenmod/platform/internal/ManagedServices;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/ManagedServices;->-wrap3(Lorg/cyanogenmod/platform/internal/ManagedServices;)V

    .line 520
    :cond_2
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 0
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 517
    invoke-direct {p0, p2}, Lorg/cyanogenmod/platform/internal/ManagedServices$SettingsObserver;->update(Landroid/net/Uri;)V

    .line 516
    return-void
.end method
