.class public Lcom/android/server/wifi/anqp/NetworkAuthenticationTypeElement$NetworkAuthentication;
.super Ljava/lang/Object;
.source "NetworkAuthenticationTypeElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/anqp/NetworkAuthenticationTypeElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NetworkAuthentication"
.end annotation


# instance fields
.field private final m_type:Lcom/android/server/wifi/anqp/NetworkAuthenticationTypeElement$NwkAuthTypeEnum;

.field private final m_url:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/android/server/wifi/anqp/NetworkAuthenticationTypeElement$NwkAuthTypeEnum;Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Lcom/android/server/wifi/anqp/NetworkAuthenticationTypeElement$NwkAuthTypeEnum;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/android/server/wifi/anqp/NetworkAuthenticationTypeElement$NetworkAuthentication;->m_type:Lcom/android/server/wifi/anqp/NetworkAuthenticationTypeElement$NwkAuthTypeEnum;

    .line 33
    iput-object p2, p0, Lcom/android/server/wifi/anqp/NetworkAuthenticationTypeElement$NetworkAuthentication;->m_url:Ljava/lang/String;

    .line 31
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wifi/anqp/NetworkAuthenticationTypeElement$NwkAuthTypeEnum;Ljava/lang/String;Lcom/android/server/wifi/anqp/NetworkAuthenticationTypeElement$NetworkAuthentication;)V
    .locals 0
    .param p1, "type"    # Lcom/android/server/wifi/anqp/NetworkAuthenticationTypeElement$NwkAuthTypeEnum;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/anqp/NetworkAuthenticationTypeElement$NetworkAuthentication;-><init>(Lcom/android/server/wifi/anqp/NetworkAuthenticationTypeElement$NwkAuthTypeEnum;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getType()Lcom/android/server/wifi/anqp/NetworkAuthenticationTypeElement$NwkAuthTypeEnum;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/server/wifi/anqp/NetworkAuthenticationTypeElement$NetworkAuthentication;->m_type:Lcom/android/server/wifi/anqp/NetworkAuthenticationTypeElement$NwkAuthTypeEnum;

    return-object v0
.end method

.method public getURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/server/wifi/anqp/NetworkAuthenticationTypeElement$NetworkAuthentication;->m_url:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "NetworkAuthentication{m_type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 47
    iget-object v1, p0, Lcom/android/server/wifi/anqp/NetworkAuthenticationTypeElement$NetworkAuthentication;->m_type:Lcom/android/server/wifi/anqp/NetworkAuthenticationTypeElement$NwkAuthTypeEnum;

    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 48
    const-string/jumbo v1, ", m_url=\'"

    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 48
    iget-object v1, p0, Lcom/android/server/wifi/anqp/NetworkAuthenticationTypeElement$NetworkAuthentication;->m_url:Ljava/lang/String;

    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 48
    const/16 v1, 0x27

    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 49
    const/16 v1, 0x7d

    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
