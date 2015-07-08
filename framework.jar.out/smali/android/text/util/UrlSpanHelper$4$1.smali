.class Landroid/text/util/UrlSpanHelper$4$1;
.super Ljava/lang/Object;
.source "UrlSpanHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/text/util/UrlSpanHelper$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/text/util/UrlSpanHelper$4;

.field final synthetic val$name:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/text/util/UrlSpanHelper$4;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 279
    iput-object p1, p0, Landroid/text/util/UrlSpanHelper$4$1;->this$0:Landroid/text/util/UrlSpanHelper$4;

    iput-object p2, p0, Landroid/text/util/UrlSpanHelper$4$1;->val$name:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 281
    # getter for: Landroid/text/util/UrlSpanHelper;->mDialog:Landroid/app/AlertDialog;
    invoke-static {}, Landroid/text/util/UrlSpanHelper;->access$900()Landroid/app/AlertDialog;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/text/util/UrlSpanHelper$4$1;->this$0:Landroid/text/util/UrlSpanHelper$4;

    iget-object v2, v2, Landroid/text/util/UrlSpanHelper$4;->val$value:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/text/util/UrlSpanHelper$4$1;->val$name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 282
    return-void
.end method
