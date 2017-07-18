.class Lcyanogenmod/externalviews/ExternalView$2;
.super Ljava/lang/Object;
.source "ExternalView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcyanogenmod/externalviews/ExternalView;->onPreDraw()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcyanogenmod/externalviews/ExternalView;

.field final synthetic val$clipRect:Landroid/graphics/Rect;

.field final synthetic val$height:I

.field final synthetic val$visible:Z

.field final synthetic val$width:I

.field final synthetic val$x:I

.field final synthetic val$y:I


# direct methods
.method constructor <init>(Lcyanogenmod/externalviews/ExternalView;IIIIZLandroid/graphics/Rect;)V
    .locals 0
    .param p1, "this$0"    # Lcyanogenmod/externalviews/ExternalView;
    .param p2, "val$x"    # I
    .param p3, "val$y"    # I
    .param p4, "val$width"    # I
    .param p5, "val$height"    # I
    .param p6, "val$visible"    # Z
    .param p7, "val$clipRect"    # Landroid/graphics/Rect;

    .prologue
    .line 120
    iput-object p1, p0, Lcyanogenmod/externalviews/ExternalView$2;->this$0:Lcyanogenmod/externalviews/ExternalView;

    iput p2, p0, Lcyanogenmod/externalviews/ExternalView$2;->val$x:I

    iput p3, p0, Lcyanogenmod/externalviews/ExternalView$2;->val$y:I

    iput p4, p0, Lcyanogenmod/externalviews/ExternalView$2;->val$width:I

    iput p5, p0, Lcyanogenmod/externalviews/ExternalView$2;->val$height:I

    iput-boolean p6, p0, Lcyanogenmod/externalviews/ExternalView$2;->val$visible:Z

    iput-object p7, p0, Lcyanogenmod/externalviews/ExternalView$2;->val$clipRect:Landroid/graphics/Rect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 124
    :try_start_0
    iget-object v0, p0, Lcyanogenmod/externalviews/ExternalView$2;->this$0:Lcyanogenmod/externalviews/ExternalView;

    iget-object v0, v0, Lcyanogenmod/externalviews/ExternalView;->mExternalViewProvider:Lcyanogenmod/externalviews/IExternalViewProvider;

    iget v1, p0, Lcyanogenmod/externalviews/ExternalView$2;->val$x:I

    iget v2, p0, Lcyanogenmod/externalviews/ExternalView$2;->val$y:I

    iget v3, p0, Lcyanogenmod/externalviews/ExternalView$2;->val$width:I

    iget v4, p0, Lcyanogenmod/externalviews/ExternalView$2;->val$height:I

    iget-boolean v5, p0, Lcyanogenmod/externalviews/ExternalView$2;->val$visible:Z

    .line 125
    iget-object v6, p0, Lcyanogenmod/externalviews/ExternalView$2;->val$clipRect:Landroid/graphics/Rect;

    .line 124
    invoke-interface/range {v0 .. v6}, Lcyanogenmod/externalviews/IExternalViewProvider;->alterWindow(IIIIZLandroid/graphics/Rect;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    :goto_0
    return-void

    .line 126
    :catch_0
    move-exception v7

    .local v7, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method
