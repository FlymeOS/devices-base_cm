.class Lcom/android/internal/widget/MzAbsActionBarView$1;
.super Ljava/lang/Object;
.source "MzAbsActionBarView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/widget/MzAbsActionBarView;->postShowOverflowMenu()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/MzAbsActionBarView;


# direct methods
.method constructor <init>(Lcom/android/internal/widget/MzAbsActionBarView;)V
    .locals 0

    .prologue
    .line 262
    iput-object p1, p0, Lcom/android/internal/widget/MzAbsActionBarView$1;->this$0:Lcom/android/internal/widget/MzAbsActionBarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lcom/android/internal/widget/MzAbsActionBarView$1;->this$0:Lcom/android/internal/widget/MzAbsActionBarView;

    invoke-virtual {v0}, Lcom/android/internal/widget/MzAbsActionBarView;->showOverflowMenu()Z

    .line 265
    return-void
.end method
