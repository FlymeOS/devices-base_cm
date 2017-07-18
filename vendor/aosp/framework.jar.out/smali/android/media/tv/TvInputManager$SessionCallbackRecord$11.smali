.class Landroid/media/tv/TvInputManager$SessionCallbackRecord$11;
.super Ljava/lang/Object;
.source "TvInputManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/tv/TvInputManager$SessionCallbackRecord;->postLayoutSurface(IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/media/tv/TvInputManager$SessionCallbackRecord;

.field final synthetic val$bottom:I

.field final synthetic val$left:I

.field final synthetic val$right:I

.field final synthetic val$top:I


# direct methods
.method constructor <init>(Landroid/media/tv/TvInputManager$SessionCallbackRecord;IIII)V
    .locals 0
    .param p1, "this$1"    # Landroid/media/tv/TvInputManager$SessionCallbackRecord;
    .param p2, "val$left"    # I
    .param p3, "val$top"    # I
    .param p4, "val$right"    # I
    .param p5, "val$bottom"    # I

    .prologue
    .line 525
    iput-object p1, p0, Landroid/media/tv/TvInputManager$SessionCallbackRecord$11;->this$1:Landroid/media/tv/TvInputManager$SessionCallbackRecord;

    iput p2, p0, Landroid/media/tv/TvInputManager$SessionCallbackRecord$11;->val$left:I

    iput p3, p0, Landroid/media/tv/TvInputManager$SessionCallbackRecord$11;->val$top:I

    iput p4, p0, Landroid/media/tv/TvInputManager$SessionCallbackRecord$11;->val$right:I

    iput p5, p0, Landroid/media/tv/TvInputManager$SessionCallbackRecord$11;->val$bottom:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 528
    iget-object v0, p0, Landroid/media/tv/TvInputManager$SessionCallbackRecord$11;->this$1:Landroid/media/tv/TvInputManager$SessionCallbackRecord;

    invoke-static {v0}, Landroid/media/tv/TvInputManager$SessionCallbackRecord;->-get1(Landroid/media/tv/TvInputManager$SessionCallbackRecord;)Landroid/media/tv/TvInputManager$SessionCallback;

    move-result-object v0

    iget-object v1, p0, Landroid/media/tv/TvInputManager$SessionCallbackRecord$11;->this$1:Landroid/media/tv/TvInputManager$SessionCallbackRecord;

    invoke-static {v1}, Landroid/media/tv/TvInputManager$SessionCallbackRecord;->-get0(Landroid/media/tv/TvInputManager$SessionCallbackRecord;)Landroid/media/tv/TvInputManager$Session;

    move-result-object v1

    iget v2, p0, Landroid/media/tv/TvInputManager$SessionCallbackRecord$11;->val$left:I

    iget v3, p0, Landroid/media/tv/TvInputManager$SessionCallbackRecord$11;->val$top:I

    iget v4, p0, Landroid/media/tv/TvInputManager$SessionCallbackRecord$11;->val$right:I

    iget v5, p0, Landroid/media/tv/TvInputManager$SessionCallbackRecord$11;->val$bottom:I

    invoke-virtual/range {v0 .. v5}, Landroid/media/tv/TvInputManager$SessionCallback;->onLayoutSurface(Landroid/media/tv/TvInputManager$Session;IIII)V

    .line 527
    return-void
.end method
