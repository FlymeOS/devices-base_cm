.class Landroid/app/Activity$FlymeInjector$TintBarInject$1;
.super Ljava/lang/Object;
.source "Activity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/Activity$FlymeInjector$TintBarInject;->onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)Landroid/view/WindowManager$LayoutParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Landroid/app/Activity$FlymeInjector$TintBarInject;


# direct methods
.method constructor <init>(Landroid/app/Activity$FlymeInjector$TintBarInject;)V
    .locals 0
    .param p1, "this$2"    # Landroid/app/Activity$FlymeInjector$TintBarInject;

    .prologue
    .line 6909
    iput-object p1, p0, Landroid/app/Activity$FlymeInjector$TintBarInject$1;->this$2:Landroid/app/Activity$FlymeInjector$TintBarInject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 6912
    iget-object v0, p0, Landroid/app/Activity$FlymeInjector$TintBarInject$1;->this$2:Landroid/app/Activity$FlymeInjector$TintBarInject;

    iget-object v1, p0, Landroid/app/Activity$FlymeInjector$TintBarInject$1;->this$2:Landroid/app/Activity$FlymeInjector$TintBarInject;

    invoke-static {v1}, Landroid/app/Activity$FlymeInjector$TintBarInject;->-get3(Landroid/app/Activity$FlymeInjector$TintBarInject;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/app/Activity$FlymeInjector$TintBarInject;->-wrap3(Landroid/app/Activity$FlymeInjector$TintBarInject;I)V

    .line 6911
    return-void
.end method
