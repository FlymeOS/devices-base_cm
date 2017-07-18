.class Lcom/android/internal/app/AlertControllerExt$8;
.super Ljava/lang/Object;
.source "AlertControllerExt.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/AlertControllerExt;->setupTitle()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/app/AlertControllerExt;


# direct methods
.method constructor <init>(Lcom/android/internal/app/AlertControllerExt;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/app/AlertControllerExt;

    .prologue
    .line 1090
    iput-object p1, p0, Lcom/android/internal/app/AlertControllerExt$8;->this$0:Lcom/android/internal/app/AlertControllerExt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1095
    iget-object v1, p0, Lcom/android/internal/app/AlertControllerExt$8;->this$0:Lcom/android/internal/app/AlertControllerExt;

    invoke-static {v1}, Lcom/android/internal/app/AlertControllerExt;->-get8(Lcom/android/internal/app/AlertControllerExt;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getLineCount()I

    move-result v1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/internal/app/AlertControllerExt$8;->this$0:Lcom/android/internal/app/AlertControllerExt;

    invoke-static {v1}, Lcom/android/internal/app/AlertControllerExt;->-get6(Lcom/android/internal/app/AlertControllerExt;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/app/AlertControllerExt$8;->this$0:Lcom/android/internal/app/AlertControllerExt;

    invoke-static {v1}, Lcom/android/internal/app/AlertControllerExt;->-get9(Lcom/android/internal/app/AlertControllerExt;)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1096
    iget-object v1, p0, Lcom/android/internal/app/AlertControllerExt$8;->this$0:Lcom/android/internal/app/AlertControllerExt;

    invoke-static {v1}, Lcom/android/internal/app/AlertControllerExt;->-get1(Lcom/android/internal/app/AlertControllerExt;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_1

    .line 1097
    iget-object v1, p0, Lcom/android/internal/app/AlertControllerExt$8;->this$0:Lcom/android/internal/app/AlertControllerExt;

    invoke-static {v1}, Lcom/android/internal/app/AlertControllerExt;->-get8(Lcom/android/internal/app/AlertControllerExt;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 1093
    :cond_0
    :goto_0
    return-void

    .line 1099
    :cond_1
    iget-object v1, p0, Lcom/android/internal/app/AlertControllerExt$8;->this$0:Lcom/android/internal/app/AlertControllerExt;

    invoke-static {v1}, Lcom/android/internal/app/AlertControllerExt;->-get0(Lcom/android/internal/app/AlertControllerExt;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1100
    iget-object v1, p0, Lcom/android/internal/app/AlertControllerExt$8;->this$0:Lcom/android/internal/app/AlertControllerExt;

    invoke-static {v1}, Lcom/android/internal/app/AlertControllerExt;->-get8(Lcom/android/internal/app/AlertControllerExt;)Landroid/widget/TextView;

    move-result-object v1

    const v2, -0x777778

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1101
    iget-object v1, p0, Lcom/android/internal/app/AlertControllerExt$8;->this$0:Lcom/android/internal/app/AlertControllerExt;

    invoke-static {v1}, Lcom/android/internal/app/AlertControllerExt;->-get8(Lcom/android/internal/app/AlertControllerExt;)Landroid/widget/TextView;

    move-result-object v1

    const/high16 v2, 0x41600000    # 14.0f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1102
    iget-object v1, p0, Lcom/android/internal/app/AlertControllerExt$8;->this$0:Lcom/android/internal/app/AlertControllerExt;

    invoke-static {v1}, Lcom/android/internal/app/AlertControllerExt;->-get11(Lcom/android/internal/app/AlertControllerExt;)Landroid/widget/LinearLayout;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1103
    iget-object v1, p0, Lcom/android/internal/app/AlertControllerExt$8;->this$0:Lcom/android/internal/app/AlertControllerExt;

    invoke-static {v1}, Lcom/android/internal/app/AlertControllerExt;->-get11(Lcom/android/internal/app/AlertControllerExt;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 1104
    .local v0, "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v1, 0x12

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    goto :goto_0

    .line 1107
    .end local v0    # "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    :cond_2
    iget-object v1, p0, Lcom/android/internal/app/AlertControllerExt$8;->this$0:Lcom/android/internal/app/AlertControllerExt;

    invoke-static {v1}, Lcom/android/internal/app/AlertControllerExt;->-get8(Lcom/android/internal/app/AlertControllerExt;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_0
.end method
