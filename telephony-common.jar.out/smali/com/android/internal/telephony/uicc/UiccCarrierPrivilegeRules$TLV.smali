.class Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;
.super Ljava/lang/Object;
.source "UiccCarrierPrivilegeRules.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TLV"
.end annotation


# static fields
.field private static final SINGLE_BYTE_MAX_LENGTH:I = 0x80


# instance fields
.field private length:Ljava/lang/Integer;

.field private lengthBytes:Ljava/lang/String;

.field private tag:Ljava/lang/String;

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 158
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->tag:Ljava/lang/String;

    .line 159
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;)Ljava/lang/Integer;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->length:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->value:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public parse(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 5
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "shouldConsumeAll"    # Z

    .prologue
    .line 177
    const-string v2, "UiccCarrierPrivilegeRules"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Parse TLV: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->tag:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->tag:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 179
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Tags don\'t match."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 181
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->tag:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    .line 182
    .local v0, "index":I
    add-int/lit8 v2, v0, 0x2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-le v2, v3, :cond_1

    .line 183
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "No length."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 186
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->parseLength(Ljava/lang/String;)Ljava/lang/String;

    .line 187
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->lengthBytes:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v0, v2

    .line 189
    const-string v2, "UiccCarrierPrivilegeRules"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "index="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " length="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->length:Ljava/lang/Integer;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "data.length="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->length:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/2addr v3, v0

    sub-int v1, v2, v3

    .line 191
    .local v1, "remainingLength":I
    if-gez v1, :cond_2

    .line 192
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Not enough data."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 194
    :cond_2
    if-eqz p2, :cond_3

    if-eqz v1, :cond_3

    .line 195
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Did not consume all."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 197
    :cond_3
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->length:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->value:Ljava/lang/String;

    .line 199
    const-string v2, "UiccCarrierPrivilegeRules"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Got TLV: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->tag:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->length:Ljava/lang/Integer;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->value:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->length:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public parseLength(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    const/16 v6, 0x10

    .line 162
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->tag:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    .line 163
    .local v2, "offset":I
    add-int/lit8 v3, v2, 0x2

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    .line 164
    .local v0, "firstByte":I
    const/16 v3, 0x80

    if-ge v0, v3, :cond_0

    .line 165
    mul-int/lit8 v3, v0, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->length:Ljava/lang/Integer;

    .line 166
    add-int/lit8 v3, v2, 0x2

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->lengthBytes:Ljava/lang/String;

    .line 172
    :goto_0
    const-string v3, "UiccCarrierPrivilegeRules"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "TLV parseLength length="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->length:Ljava/lang/Integer;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "lenghtBytes: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->lengthBytes:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->lengthBytes:Ljava/lang/String;

    return-object v3

    .line 168
    :cond_0
    add-int/lit8 v1, v0, -0x80

    .line 169
    .local v1, "numBytes":I
    add-int/lit8 v3, v2, 0x2

    add-int/lit8 v4, v2, 0x2

    mul-int/lit8 v5, v1, 0x2

    add-int/2addr v4, v5

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->length:Ljava/lang/Integer;

    .line 170
    add-int/lit8 v3, v2, 0x2

    mul-int/lit8 v4, v1, 0x2

    add-int/2addr v3, v4

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->lengthBytes:Ljava/lang/String;

    goto :goto_0
.end method
