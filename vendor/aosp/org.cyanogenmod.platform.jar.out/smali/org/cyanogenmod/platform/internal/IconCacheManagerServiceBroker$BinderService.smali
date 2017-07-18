.class final Lorg/cyanogenmod/platform/internal/IconCacheManagerServiceBroker$BinderService;
.super Lorg/cyanogenmod/internal/themes/IIconCacheManager$Stub;
.source "IconCacheManagerServiceBroker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cyanogenmod/platform/internal/IconCacheManagerServiceBroker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BinderService"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/cyanogenmod/platform/internal/IconCacheManagerServiceBroker;


# direct methods
.method private constructor <init>(Lorg/cyanogenmod/platform/internal/IconCacheManagerServiceBroker;)V
    .locals 0
    .param p1, "this$0"    # Lorg/cyanogenmod/platform/internal/IconCacheManagerServiceBroker;

    .prologue
    .line 59
    iput-object p1, p0, Lorg/cyanogenmod/platform/internal/IconCacheManagerServiceBroker$BinderService;->this$0:Lorg/cyanogenmod/platform/internal/IconCacheManagerServiceBroker;

    invoke-direct {p0}, Lorg/cyanogenmod/internal/themes/IIconCacheManager$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/cyanogenmod/platform/internal/IconCacheManagerServiceBroker;Lorg/cyanogenmod/platform/internal/IconCacheManagerServiceBroker$BinderService;)V
    .locals 0
    .param p1, "this$0"    # Lorg/cyanogenmod/platform/internal/IconCacheManagerServiceBroker;

    .prologue
    invoke-direct {p0, p1}, Lorg/cyanogenmod/platform/internal/IconCacheManagerServiceBroker$BinderService;-><init>(Lorg/cyanogenmod/platform/internal/IconCacheManagerServiceBroker;)V

    return-void
.end method


# virtual methods
.method public cacheComposedIcon(Landroid/graphics/Bitmap;Ljava/lang/String;)Z
    .locals 1
    .param p1, "icon"    # Landroid/graphics/Bitmap;
    .param p2, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 62
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/IconCacheManagerServiceBroker$BinderService;->this$0:Lorg/cyanogenmod/platform/internal/IconCacheManagerServiceBroker;

    invoke-virtual {v0}, Lorg/cyanogenmod/platform/internal/IconCacheManagerServiceBroker;->getBrokeredService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lorg/cyanogenmod/internal/themes/IIconCacheManager;

    invoke-interface {v0, p1, p2}, Lorg/cyanogenmod/internal/themes/IIconCacheManager;->cacheComposedIcon(Landroid/graphics/Bitmap;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
