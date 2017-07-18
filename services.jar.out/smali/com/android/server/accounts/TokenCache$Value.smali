.class Lcom/android/server/accounts/TokenCache$Value;
.super Ljava/lang/Object;
.source "TokenCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accounts/TokenCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Value"
.end annotation


# instance fields
.field public final expiryEpochMillis:J

.field public final token:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;J)V
    .locals 0
    .param p1, "token"    # Ljava/lang/String;
    .param p2, "expiryEpochMillis"    # J

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/android/server/accounts/TokenCache$Value;->token:Ljava/lang/String;

    .line 44
    iput-wide p2, p0, Lcom/android/server/accounts/TokenCache$Value;->expiryEpochMillis:J

    .line 42
    return-void
.end method
