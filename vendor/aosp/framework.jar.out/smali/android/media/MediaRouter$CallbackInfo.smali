.class Landroid/media/MediaRouter$CallbackInfo;
.super Ljava/lang/Object;
.source "MediaRouter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaRouter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CallbackInfo"
.end annotation


# instance fields
.field public final cb:Landroid/media/MediaRouter$Callback;

.field public flags:I

.field public final router:Landroid/media/MediaRouter;

.field public type:I


# direct methods
.method public constructor <init>(Landroid/media/MediaRouter$Callback;IILandroid/media/MediaRouter;)V
    .locals 0
    .param p1, "cb"    # Landroid/media/MediaRouter$Callback;
    .param p2, "type"    # I
    .param p3, "flags"    # I
    .param p4, "router"    # Landroid/media/MediaRouter;

    .prologue
    .line 2653
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2654
    iput-object p1, p0, Landroid/media/MediaRouter$CallbackInfo;->cb:Landroid/media/MediaRouter$Callback;

    .line 2655
    iput p2, p0, Landroid/media/MediaRouter$CallbackInfo;->type:I

    .line 2656
    iput p3, p0, Landroid/media/MediaRouter$CallbackInfo;->flags:I

    .line 2657
    iput-object p4, p0, Landroid/media/MediaRouter$CallbackInfo;->router:Landroid/media/MediaRouter;

    .line 2653
    return-void
.end method


# virtual methods
.method public filterRouteEvent(I)Z
    .locals 3
    .param p1, "supportedTypes"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2665
    iget v2, p0, Landroid/media/MediaRouter$CallbackInfo;->flags:I

    and-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_0

    .line 2666
    iget v2, p0, Landroid/media/MediaRouter$CallbackInfo;->type:I

    and-int/2addr v2, p1

    if-eqz v2, :cond_1

    .line 2665
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 2666
    goto :goto_0
.end method

.method public filterRouteEvent(Landroid/media/MediaRouter$RouteInfo;)Z
    .locals 1
    .param p1, "route"    # Landroid/media/MediaRouter$RouteInfo;

    .prologue
    .line 2661
    iget v0, p1, Landroid/media/MediaRouter$RouteInfo;->mSupportedTypes:I

    invoke-virtual {p0, v0}, Landroid/media/MediaRouter$CallbackInfo;->filterRouteEvent(I)Z

    move-result v0

    return v0
.end method
