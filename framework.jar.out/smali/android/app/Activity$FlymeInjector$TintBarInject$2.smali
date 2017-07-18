.class Landroid/app/Activity$FlymeInjector$TintBarInject$2;
.super Ljava/lang/Object;
.source "Activity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/Activity$FlymeInjector$TintBarInject;->onDrawDecorViewInner(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Landroid/app/Activity$FlymeInjector$TintBarInject;

.field final synthetic val$delay:I


# direct methods
.method constructor <init>(Landroid/app/Activity$FlymeInjector$TintBarInject;I)V
    .locals 0
    .param p1, "this$2"    # Landroid/app/Activity$FlymeInjector$TintBarInject;
    .param p2, "val$delay"    # I

    .prologue
    .line 7078
    iput-object p1, p0, Landroid/app/Activity$FlymeInjector$TintBarInject$2;->this$2:Landroid/app/Activity$FlymeInjector$TintBarInject;

    iput p2, p0, Landroid/app/Activity$FlymeInjector$TintBarInject$2;->val$delay:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v3, 0x3

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 7081
    iget-object v2, p0, Landroid/app/Activity$FlymeInjector$TintBarInject$2;->this$2:Landroid/app/Activity$FlymeInjector$TintBarInject;

    invoke-static {v2}, Landroid/app/Activity$FlymeInjector$TintBarInject;->-get0(Landroid/app/Activity$FlymeInjector$TintBarInject;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 7082
    iget-object v2, p0, Landroid/app/Activity$FlymeInjector$TintBarInject$2;->this$2:Landroid/app/Activity$FlymeInjector$TintBarInject;

    iget-object v3, p0, Landroid/app/Activity$FlymeInjector$TintBarInject$2;->this$2:Landroid/app/Activity$FlymeInjector$TintBarInject;

    invoke-static {v3}, Landroid/app/Activity$FlymeInjector$TintBarInject;->-get4(Landroid/app/Activity$FlymeInjector$TintBarInject;)Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    iget v4, p0, Landroid/app/Activity$FlymeInjector$TintBarInject$2;->val$delay:I

    if-nez v4, :cond_1

    :goto_0
    invoke-static {v2, v3, v0}, Landroid/app/Activity$FlymeInjector$TintBarInject;->-wrap0(Landroid/app/Activity$FlymeInjector$TintBarInject;Landroid/view/View;Z)V

    .line 7080
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v1

    .line 7082
    goto :goto_0

    .line 7084
    :cond_2
    iget-object v2, p0, Landroid/app/Activity$FlymeInjector$TintBarInject$2;->this$2:Landroid/app/Activity$FlymeInjector$TintBarInject;

    invoke-static {v2, v0}, Landroid/app/Activity$FlymeInjector$TintBarInject;->-set0(Landroid/app/Activity$FlymeInjector$TintBarInject;Z)Z

    .line 7085
    iget-object v2, p0, Landroid/app/Activity$FlymeInjector$TintBarInject$2;->this$2:Landroid/app/Activity$FlymeInjector$TintBarInject;

    invoke-static {v2}, Landroid/app/Activity$FlymeInjector$TintBarInject;->-get1(Landroid/app/Activity$FlymeInjector$TintBarInject;)I

    move-result v2

    if-ge v2, v3, :cond_3

    .line 7086
    iget-object v0, p0, Landroid/app/Activity$FlymeInjector$TintBarInject$2;->this$2:Landroid/app/Activity$FlymeInjector$TintBarInject;

    iget-object v1, p0, Landroid/app/Activity$FlymeInjector$TintBarInject$2;->this$2:Landroid/app/Activity$FlymeInjector$TintBarInject;

    invoke-static {v1}, Landroid/app/Activity$FlymeInjector$TintBarInject;->-get4(Landroid/app/Activity$FlymeInjector$TintBarInject;)Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Landroid/app/Activity$FlymeInjector$TintBarInject$2;->this$2:Landroid/app/Activity$FlymeInjector$TintBarInject;

    invoke-static {v2}, Landroid/app/Activity$FlymeInjector$TintBarInject;->-get1(Landroid/app/Activity$FlymeInjector$TintBarInject;)I

    move-result v2

    mul-int/lit8 v2, v2, 0x1e

    invoke-static {v0, v1, v2}, Landroid/app/Activity$FlymeInjector$TintBarInject;->-wrap1(Landroid/app/Activity$FlymeInjector$TintBarInject;Landroid/view/View;I)V

    .line 7087
    iget-object v0, p0, Landroid/app/Activity$FlymeInjector$TintBarInject$2;->this$2:Landroid/app/Activity$FlymeInjector$TintBarInject;

    invoke-static {v0}, Landroid/app/Activity$FlymeInjector$TintBarInject;->-get4(Landroid/app/Activity$FlymeInjector$TintBarInject;)Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    if-eq v0, v3, :cond_0

    .line 7088
    iget-object v0, p0, Landroid/app/Activity$FlymeInjector$TintBarInject$2;->this$2:Landroid/app/Activity$FlymeInjector$TintBarInject;

    invoke-static {v0}, Landroid/app/Activity$FlymeInjector$TintBarInject;->-get1(Landroid/app/Activity$FlymeInjector$TintBarInject;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Landroid/app/Activity$FlymeInjector$TintBarInject;->-set1(Landroid/app/Activity$FlymeInjector$TintBarInject;I)I

    goto :goto_1

    .line 7091
    :cond_3
    iget-object v2, p0, Landroid/app/Activity$FlymeInjector$TintBarInject$2;->this$2:Landroid/app/Activity$FlymeInjector$TintBarInject;

    invoke-static {v2}, Landroid/app/Activity$FlymeInjector$TintBarInject;->-get2(Landroid/app/Activity$FlymeInjector$TintBarInject;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 7092
    iget-object v2, p0, Landroid/app/Activity$FlymeInjector$TintBarInject$2;->this$2:Landroid/app/Activity$FlymeInjector$TintBarInject;

    iget-object v3, p0, Landroid/app/Activity$FlymeInjector$TintBarInject$2;->this$2:Landroid/app/Activity$FlymeInjector$TintBarInject;

    invoke-static {v3}, Landroid/app/Activity$FlymeInjector$TintBarInject;->-get4(Landroid/app/Activity$FlymeInjector$TintBarInject;)Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    invoke-static {v2, v1, v3, v0}, Landroid/app/Activity$FlymeInjector$TintBarInject;->-wrap2(Landroid/app/Activity$FlymeInjector$TintBarInject;ZLandroid/view/WindowManager$LayoutParams;Z)V

    goto :goto_1
.end method
