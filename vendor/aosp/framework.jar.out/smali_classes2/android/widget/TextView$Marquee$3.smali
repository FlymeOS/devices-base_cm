.class Landroid/widget/TextView$Marquee$3;
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
    .line 10029
    iput-object p1, p0, Landroid/widget/TextView$Marquee$3;->this$1:Landroid/widget/TextView$Marquee;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doFrame(J)V
    .locals 2
    .param p1, "frameTimeNanos"    # J

    .prologue
    .line 10032
    iget-object v0, p0, Landroid/widget/TextView$Marquee$3;->this$1:Landroid/widget/TextView$Marquee;

    invoke-static {v0}, Landroid/widget/TextView$Marquee;->-get2(Landroid/widget/TextView$Marquee;)B

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 10033
    iget-object v0, p0, Landroid/widget/TextView$Marquee$3;->this$1:Landroid/widget/TextView$Marquee;

    invoke-static {v0}, Landroid/widget/TextView$Marquee;->-get1(Landroid/widget/TextView$Marquee;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 10034
    iget-object v0, p0, Landroid/widget/TextView$Marquee$3;->this$1:Landroid/widget/TextView$Marquee;

    invoke-static {v0}, Landroid/widget/TextView$Marquee;->-get1(Landroid/widget/TextView$Marquee;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Landroid/widget/TextView$Marquee;->-set1(Landroid/widget/TextView$Marquee;I)I

    .line 10036
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView$Marquee$3;->this$1:Landroid/widget/TextView$Marquee;

    iget-object v1, p0, Landroid/widget/TextView$Marquee$3;->this$1:Landroid/widget/TextView$Marquee;

    invoke-static {v1}, Landroid/widget/TextView$Marquee;->-get1(Landroid/widget/TextView$Marquee;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView$Marquee;->start(I)V

    .line 10031
    :cond_1
    return-void
.end method
