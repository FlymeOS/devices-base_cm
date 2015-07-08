.class Landroid/widget/TextView$MzInputShownChangeListener$1;
.super Ljava/lang/Object;
.source "TextView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/TextView$MzInputShownChangeListener;->onInputShownChanged(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/TextView$MzInputShownChangeListener;

.field final synthetic val$shown:Z


# direct methods
.method constructor <init>(Landroid/widget/TextView$MzInputShownChangeListener;Z)V
    .locals 0

    .prologue
    .line 9747
    iput-object p1, p0, Landroid/widget/TextView$MzInputShownChangeListener$1;->this$1:Landroid/widget/TextView$MzInputShownChangeListener;

    iput-boolean p2, p0, Landroid/widget/TextView$MzInputShownChangeListener$1;->val$shown:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 9750
    iget-object v0, p0, Landroid/widget/TextView$MzInputShownChangeListener$1;->this$1:Landroid/widget/TextView$MzInputShownChangeListener;

    iget-boolean v1, p0, Landroid/widget/TextView$MzInputShownChangeListener$1;->val$shown:Z

    invoke-virtual {v0, v1}, Landroid/widget/TextView$MzInputShownChangeListener;->onInputShownChanged(Z)V

    .line 9751
    return-void
.end method
