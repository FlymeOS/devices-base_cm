.class final Landroid/drm/DrmHelper$1;
.super Ljava/lang/Object;
.source "DrmHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/drm/DrmHelper;->manageDrmLicense(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$mimeType:Ljava/lang/String;

.field final synthetic val$path:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 434
    iput-object p1, p0, Landroid/drm/DrmHelper$1;->val$path:Ljava/lang/String;

    iput-object p2, p0, Landroid/drm/DrmHelper$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Landroid/drm/DrmHelper$1;->val$mimeType:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 438
    iget-object v0, p0, Landroid/drm/DrmHelper$1;->val$path:Ljava/lang/String;

    invoke-static {v0}, Landroid/drm/DrmHelper;->isDrmFile(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 439
    iget-object v0, p0, Landroid/drm/DrmHelper$1;->val$context:Landroid/content/Context;

    iget-object v1, p0, Landroid/drm/DrmHelper$1;->val$path:Ljava/lang/String;

    iget-object v2, p0, Landroid/drm/DrmHelper$1;->val$mimeType:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroid/drm/DrmHelper;->validateLicense(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 440
    iget-object v0, p0, Landroid/drm/DrmHelper$1;->val$path:Ljava/lang/String;

    iget-object v1, p0, Landroid/drm/DrmHelper$1;->val$mimeType:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/drm/DrmHelper;->consumeDrmRights(Ljava/lang/String;Ljava/lang/String;)Z

    .line 443
    :cond_0
    return-void
.end method
