.class Landroid/widget/TextView$Marquee$2;
.super Ljava/lang/Object;
.source "TextView.java"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TextView$Marquee;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/TextView$Marquee;


# direct methods
.method constructor <init>(Landroid/widget/TextView$Marquee;)V
    .locals 0
    .param p1, "this$1"    # Landroid/widget/TextView$Marquee;

    .prologue
    .line 10020
    iput-object p1, p0, Landroid/widget/TextView$Marquee$2;->this$1:Landroid/widget/TextView$Marquee;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doFrame(J)V
    .locals 4
    .param p1, "frameTimeNanos"    # J

    .prologue
    .line 10023
    iget-object v0, p0, Landroid/widget/TextView$Marquee$2;->this$1:Landroid/widget/TextView$Marquee;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/widget/TextView$Marquee;->-set2(Landroid/widget/TextView$Marquee;B)B

    .line 10024
    iget-object v0, p0, Landroid/widget/TextView$Marquee$2;->this$1:Landroid/widget/TextView$Marquee;

    iget-object v1, p0, Landroid/widget/TextView$Marquee$2;->this$1:Landroid/widget/TextView$Marquee;

    invoke-static {v1}, Landroid/widget/TextView$Marquee;->-get0(Landroid/widget/TextView$Marquee;)Landroid/view/Choreographer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Choreographer;->getFrameTime()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Landroid/widget/TextView$Marquee;->-set0(Landroid/widget/TextView$Marquee;J)J

    .line 10025
    iget-object v0, p0, Landroid/widget/TextView$Marquee$2;->this$1:Landroid/widget/TextView$Marquee;

    invoke-virtual {v0}, Landroid/widget/TextView$Marquee;->tick()V

    .line 10022
    return-void
.end method
