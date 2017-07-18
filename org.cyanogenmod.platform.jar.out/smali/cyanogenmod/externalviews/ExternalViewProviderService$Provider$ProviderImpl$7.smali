.class Lcyanogenmod/externalviews/ExternalViewProviderService$Provider$ProviderImpl$7;
.super Ljava/lang/Object;
.source "ExternalViewProviderService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcyanogenmod/externalviews/ExternalViewProviderService$Provider$ProviderImpl;->alterWindow(IIIIZLandroid/graphics/Rect;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcyanogenmod/externalviews/ExternalViewProviderService$Provider$ProviderImpl;

.field final synthetic val$clipRect:Landroid/graphics/Rect;

.field final synthetic val$height:I

.field final synthetic val$visible:Z

.field final synthetic val$width:I

.field final synthetic val$x:I

.field final synthetic val$y:I


# direct methods
.method constructor <init>(Lcyanogenmod/externalviews/ExternalViewProviderService$Provider$ProviderImpl;IIIIZLandroid/graphics/Rect;)V
    .locals 0
    .param p1, "this$2"    # Lcyanogenmod/externalviews/ExternalViewProviderService$Provider$ProviderImpl;
    .param p2, "val$x"    # I
    .param p3, "val$y"    # I
    .param p4, "val$width"    # I
    .param p5, "val$height"    # I
    .param p6, "val$visible"    # Z
    .param p7, "val$clipRect"    # Landroid/graphics/Rect;

    .prologue
    .line 177
    iput-object p1, p0, Lcyanogenmod/externalviews/ExternalViewProviderService$Provider$ProviderImpl$7;->this$2:Lcyanogenmod/externalviews/ExternalViewProviderService$Provider$ProviderImpl;

    iput p2, p0, Lcyanogenmod/externalviews/ExternalViewProviderService$Provider$ProviderImpl$7;->val$x:I

    iput p3, p0, Lcyanogenmod/externalviews/ExternalViewProviderService$Provider$ProviderImpl$7;->val$y:I

    iput p4, p0, Lcyanogenmod/externalviews/ExternalViewProviderService$Provider$ProviderImpl$7;->val$width:I

    iput p5, p0, Lcyanogenmod/externalviews/ExternalViewProviderService$Provider$ProviderImpl$7;->val$height:I

    iput-boolean p6, p0, Lcyanogenmod/externalviews/ExternalViewProviderService$Provider$ProviderImpl$7;->val$visible:Z

    iput-object p7, p0, Lcyanogenmod/externalviews/ExternalViewProviderService$Provider$ProviderImpl$7;->val$clipRect:Landroid/graphics/Rect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 180
    iget-object v1, p0, Lcyanogenmod/externalviews/ExternalViewProviderService$Provider$ProviderImpl$7;->this$2:Lcyanogenmod/externalviews/ExternalViewProviderService$Provider$ProviderImpl;

    invoke-static {v1}, Lcyanogenmod/externalviews/ExternalViewProviderService$Provider$ProviderImpl;->-get0(Lcyanogenmod/externalviews/ExternalViewProviderService$Provider$ProviderImpl;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v2, p0, Lcyanogenmod/externalviews/ExternalViewProviderService$Provider$ProviderImpl$7;->val$x:I

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 181
    iget-object v1, p0, Lcyanogenmod/externalviews/ExternalViewProviderService$Provider$ProviderImpl$7;->this$2:Lcyanogenmod/externalviews/ExternalViewProviderService$Provider$ProviderImpl;

    invoke-static {v1}, Lcyanogenmod/externalviews/ExternalViewProviderService$Provider$ProviderImpl;->-get0(Lcyanogenmod/externalviews/ExternalViewProviderService$Provider$ProviderImpl;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v2, p0, Lcyanogenmod/externalviews/ExternalViewProviderService$Provider$ProviderImpl$7;->val$y:I

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 182
    iget-object v1, p0, Lcyanogenmod/externalviews/ExternalViewProviderService$Provider$ProviderImpl$7;->this$2:Lcyanogenmod/externalviews/ExternalViewProviderService$Provider$ProviderImpl;

    invoke-static {v1}, Lcyanogenmod/externalviews/ExternalViewProviderService$Provider$ProviderImpl;->-get0(Lcyanogenmod/externalviews/ExternalViewProviderService$Provider$ProviderImpl;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v2, p0, Lcyanogenmod/externalviews/ExternalViewProviderService$Provider$ProviderImpl$7;->val$width:I

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 183
    iget-object v1, p0, Lcyanogenmod/externalviews/ExternalViewProviderService$Provider$ProviderImpl$7;->this$2:Lcyanogenmod/externalviews/ExternalViewProviderService$Provider$ProviderImpl;

    invoke-static {v1}, Lcyanogenmod/externalviews/ExternalViewProviderService$Provider$ProviderImpl;->-get0(Lcyanogenmod/externalviews/ExternalViewProviderService$Provider$ProviderImpl;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v2, p0, Lcyanogenmod/externalviews/ExternalViewProviderService$Provider$ProviderImpl$7;->val$height:I

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 187
    iget-object v1, p0, Lcyanogenmod/externalviews/ExternalViewProviderService$Provider$ProviderImpl$7;->this$2:Lcyanogenmod/externalviews/ExternalViewProviderService$Provider$ProviderImpl;

    iget-boolean v2, p0, Lcyanogenmod/externalviews/ExternalViewProviderService$Provider$ProviderImpl$7;->val$visible:Z

    invoke-static {v1, v2}, Lcyanogenmod/externalviews/ExternalViewProviderService$Provider$ProviderImpl;->-set0(Lcyanogenmod/externalviews/ExternalViewProviderService$Provider$ProviderImpl;Z)Z

    .line 189
    iget-object v1, p0, Lcyanogenmod/externalviews/ExternalViewProviderService$Provider$ProviderImpl$7;->this$2:Lcyanogenmod/externalviews/ExternalViewProviderService$Provider$ProviderImpl;

    invoke-static {v1}, Lcyanogenmod/externalviews/ExternalViewProviderService$Provider$ProviderImpl;->-wrap0(Lcyanogenmod/externalviews/ExternalViewProviderService$Provider$ProviderImpl;)V

    .line 191
    iget-object v1, p0, Lcyanogenmod/externalviews/ExternalViewProviderService$Provider$ProviderImpl$7;->this$2:Lcyanogenmod/externalviews/ExternalViewProviderService$Provider$ProviderImpl;

    invoke-static {v1}, Lcyanogenmod/externalviews/ExternalViewProviderService$Provider$ProviderImpl;->-get1(Lcyanogenmod/externalviews/ExternalViewProviderService$Provider$ProviderImpl;)Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 192
    .local v0, "decorView":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 193
    iget-object v1, p0, Lcyanogenmod/externalviews/ExternalViewProviderService$Provider$ProviderImpl$7;->val$clipRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/view/View;->setClipBounds(Landroid/graphics/Rect;)V

    .line 196
    :cond_0
    iget-object v1, p0, Lcyanogenmod/externalviews/ExternalViewProviderService$Provider$ProviderImpl$7;->this$2:Lcyanogenmod/externalviews/ExternalViewProviderService$Provider$ProviderImpl;

    invoke-static {v1}, Lcyanogenmod/externalviews/ExternalViewProviderService$Provider$ProviderImpl;->-get1(Lcyanogenmod/externalviews/ExternalViewProviderService$Provider$ProviderImpl;)Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_1

    .line 197
    iget-object v1, p0, Lcyanogenmod/externalviews/ExternalViewProviderService$Provider$ProviderImpl$7;->this$2:Lcyanogenmod/externalviews/ExternalViewProviderService$Provider$ProviderImpl;

    iget-object v1, v1, Lcyanogenmod/externalviews/ExternalViewProviderService$Provider$ProviderImpl;->this$1:Lcyanogenmod/externalviews/ExternalViewProviderService$Provider;

    iget-object v1, v1, Lcyanogenmod/externalviews/ExternalViewProviderService$Provider;->this$0:Lcyanogenmod/externalviews/ExternalViewProviderService;

    invoke-static {v1}, Lcyanogenmod/externalviews/ExternalViewProviderService;->-get1(Lcyanogenmod/externalviews/ExternalViewProviderService;)Landroid/view/WindowManager;

    move-result-object v1

    iget-object v2, p0, Lcyanogenmod/externalviews/ExternalViewProviderService$Provider$ProviderImpl$7;->this$2:Lcyanogenmod/externalviews/ExternalViewProviderService$Provider$ProviderImpl;

    invoke-static {v2}, Lcyanogenmod/externalviews/ExternalViewProviderService$Provider$ProviderImpl;->-get1(Lcyanogenmod/externalviews/ExternalViewProviderService$Provider$ProviderImpl;)Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcyanogenmod/externalviews/ExternalViewProviderService$Provider$ProviderImpl$7;->this$2:Lcyanogenmod/externalviews/ExternalViewProviderService$Provider$ProviderImpl;

    invoke-static {v3}, Lcyanogenmod/externalviews/ExternalViewProviderService$Provider$ProviderImpl;->-get0(Lcyanogenmod/externalviews/ExternalViewProviderService$Provider$ProviderImpl;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 179
    :cond_1
    return-void
.end method
