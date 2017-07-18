.class Landroid/widget/DoubleDigitManager$1;
.super Ljava/lang/Object;
.source "DoubleDigitManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/DoubleDigitManager;->reportDigit(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/DoubleDigitManager;


# direct methods
.method constructor <init>(Landroid/widget/DoubleDigitManager;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/DoubleDigitManager;

    .prologue
    .line 52
    iput-object p1, p0, Landroid/widget/DoubleDigitManager$1;->this$0:Landroid/widget/DoubleDigitManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 54
    iget-object v0, p0, Landroid/widget/DoubleDigitManager$1;->this$0:Landroid/widget/DoubleDigitManager;

    invoke-static {v0}, Landroid/widget/DoubleDigitManager;->-get0(Landroid/widget/DoubleDigitManager;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Landroid/widget/DoubleDigitManager$1;->this$0:Landroid/widget/DoubleDigitManager;

    invoke-static {v0}, Landroid/widget/DoubleDigitManager;->-get1(Landroid/widget/DoubleDigitManager;)Landroid/widget/DoubleDigitManager$CallBack;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/DoubleDigitManager$1;->this$0:Landroid/widget/DoubleDigitManager;

    invoke-static {v1}, Landroid/widget/DoubleDigitManager;->-get0(Landroid/widget/DoubleDigitManager;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/widget/DoubleDigitManager$CallBack;->singleDigitFinal(I)V

    .line 56
    iget-object v0, p0, Landroid/widget/DoubleDigitManager$1;->this$0:Landroid/widget/DoubleDigitManager;

    invoke-static {v0, v2}, Landroid/widget/DoubleDigitManager;->-set0(Landroid/widget/DoubleDigitManager;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 53
    :cond_0
    return-void
.end method
