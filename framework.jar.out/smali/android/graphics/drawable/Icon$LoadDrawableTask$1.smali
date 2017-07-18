.class Landroid/graphics/drawable/Icon$LoadDrawableTask$1;
.super Ljava/lang/Object;
.source "Icon.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/graphics/drawable/Icon$LoadDrawableTask;-><init>(Landroid/graphics/drawable/Icon;Landroid/content/Context;Landroid/os/Handler;Landroid/graphics/drawable/Icon$OnDrawableLoadedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/graphics/drawable/Icon$LoadDrawableTask;

.field final synthetic val$listener:Landroid/graphics/drawable/Icon$OnDrawableLoadedListener;


# direct methods
.method constructor <init>(Landroid/graphics/drawable/Icon$LoadDrawableTask;Landroid/graphics/drawable/Icon$OnDrawableLoadedListener;)V
    .locals 0
    .param p1, "this$1"    # Landroid/graphics/drawable/Icon$LoadDrawableTask;
    .param p2, "val$listener"    # Landroid/graphics/drawable/Icon$OnDrawableLoadedListener;

    .prologue
    .line 759
    iput-object p1, p0, Landroid/graphics/drawable/Icon$LoadDrawableTask$1;->this$1:Landroid/graphics/drawable/Icon$LoadDrawableTask;

    iput-object p2, p0, Landroid/graphics/drawable/Icon$LoadDrawableTask$1;->val$listener:Landroid/graphics/drawable/Icon$OnDrawableLoadedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 762
    iget-object v1, p0, Landroid/graphics/drawable/Icon$LoadDrawableTask$1;->val$listener:Landroid/graphics/drawable/Icon$OnDrawableLoadedListener;

    iget-object v0, p0, Landroid/graphics/drawable/Icon$LoadDrawableTask$1;->this$1:Landroid/graphics/drawable/Icon$LoadDrawableTask;

    iget-object v0, v0, Landroid/graphics/drawable/Icon$LoadDrawableTask;->mMessage:Landroid/os/Message;

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/drawable/Drawable;

    invoke-interface {v1, v0}, Landroid/graphics/drawable/Icon$OnDrawableLoadedListener;->onDrawableLoaded(Landroid/graphics/drawable/Drawable;)V

    .line 761
    return-void
.end method
