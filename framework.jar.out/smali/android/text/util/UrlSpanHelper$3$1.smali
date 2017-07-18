.class Landroid/text/util/UrlSpanHelper$3$1;
.super Ljava/lang/Object;
.source "UrlSpanHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/text/util/UrlSpanHelper$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/text/util/UrlSpanHelper$3;

.field final synthetic val$mDialog:Landroid/app/AlertDialog;

.field final synthetic val$name:Ljava/lang/String;

.field final synthetic val$value:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Landroid/text/util/UrlSpanHelper$3;Landroid/app/AlertDialog;Ljava/lang/CharSequence;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Landroid/text/util/UrlSpanHelper$3;
    .param p2, "val$mDialog"    # Landroid/app/AlertDialog;
    .param p3, "val$value"    # Ljava/lang/CharSequence;
    .param p4, "val$name"    # Ljava/lang/String;

    .prologue
    .line 226
    iput-object p1, p0, Landroid/text/util/UrlSpanHelper$3$1;->this$1:Landroid/text/util/UrlSpanHelper$3;

    iput-object p2, p0, Landroid/text/util/UrlSpanHelper$3$1;->val$mDialog:Landroid/app/AlertDialog;

    iput-object p3, p0, Landroid/text/util/UrlSpanHelper$3$1;->val$value:Ljava/lang/CharSequence;

    iput-object p4, p0, Landroid/text/util/UrlSpanHelper$3$1;->val$name:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 228
    iget-object v0, p0, Landroid/text/util/UrlSpanHelper$3$1;->val$mDialog:Landroid/app/AlertDialog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/text/util/UrlSpanHelper$3$1;->val$value:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/text/util/UrlSpanHelper$3$1;->val$name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 227
    return-void
.end method
