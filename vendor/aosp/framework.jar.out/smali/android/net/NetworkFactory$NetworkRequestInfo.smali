.class Landroid/net/NetworkFactory$NetworkRequestInfo;
.super Ljava/lang/Object;
.source "NetworkFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/NetworkFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NetworkRequestInfo"
.end annotation


# instance fields
.field public final request:Landroid/net/NetworkRequest;

.field public requested:Z

.field public score:I

.field final synthetic this$0:Landroid/net/NetworkFactory;


# direct methods
.method public constructor <init>(Landroid/net/NetworkFactory;Landroid/net/NetworkRequest;I)V
    .locals 1
    .param p2, "request"    # Landroid/net/NetworkRequest;
    .param p3, "score"    # I

    .prologue
    .line 181
    iput-object p1, p0, Landroid/net/NetworkFactory$NetworkRequestInfo;->this$0:Landroid/net/NetworkFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 182
    iput-object p2, p0, Landroid/net/NetworkFactory$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    .line 183
    iput p3, p0, Landroid/net/NetworkFactory$NetworkRequestInfo;->score:I

    .line 184
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/NetworkFactory$NetworkRequestInfo;->requested:Z

    .line 185
    return-void
.end method
