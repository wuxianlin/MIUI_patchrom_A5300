.class Lcom/android/internal/telephony/gemini/d;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field static final synthetic a:Z


# instance fields
.field final synthetic b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 193
    const-class v0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/android/internal/telephony/gemini/d;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)V
    .locals 0
    .parameter

    .prologue
    .line 193
    iput-object p1, p0, Lcom/android/internal/telephony/gemini/d;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .parameter

    .prologue
    const/16 v7, 0x14

    const/4 v6, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 196
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 643
    :cond_0
    :goto_0
    return-void

    .line 199
    :sswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 200
    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_1

    .line 201
    const-string v0, "EVENT_PHONE_1_GPRS_ATTACHED"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 203
    :cond_1
    const-string v0, "EVENT_PHONE_1_GPRS_ATTACHED:Failed"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 207
    :sswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 208
    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_3

    .line 209
    const-string v0, "EVENT_PHONE_1_GPRS_DETACHED"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(Ljava/lang/String;)V

    .line 210
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/d;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    const-string v1, "Recv EVENT_PHONE_1_GPRS_DETACHED:"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;Ljava/lang/String;)V

    .line 211
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/d;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v0, v2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;I)Lcom/android/internal/telephony/PhoneProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 212
    instance-of v1, v0, Lcom/android/internal/telephony/gsm/GSMPhone;

    if-eqz v1, :cond_2

    .line 213
    check-cast v0, Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    .line 214
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->gprsDetachResetAPN()V

    .line 216
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/d;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    const/4 v1, 0x6

    invoke-static {v0, v2, v1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;II)V

    goto :goto_0

    .line 218
    :cond_3
    const-string v0, "EVENT_PHONE_1_GPRS_DETACHED:Failed"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(Ljava/lang/String;)V

    .line 219
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/d;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    const-string v3, "Recv EVENT_PHONE_1_GPRS_DETACHED_FAIL:"

    invoke-static {v0, v3}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;Ljava/lang/String;)V

    .line 220
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/d;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)[Z

    move-result-object v0

    aget-boolean v0, v0, v2

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/d;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->b(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)Lcom/android/internal/telephony/gemini/GeminiPhone;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->isSimInsert(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 222
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/d;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    const/16 v3, 0x59

    invoke-virtual {v0, v2, v1, v3}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->setThisSimAbortGprsAttachByDetach(IZI)V

    goto :goto_0

    .line 224
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EVENT_PHONE_1_GPRS_DETACHED: skip retry since power off is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gemini/d;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)[Z

    move-result-object v1

    aget-boolean v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sim inserted is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gemini/d;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->b(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)Lcom/android/internal/telephony/gemini/GeminiPhone;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->isSimInsert(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(Ljava/lang/String;)V

    .line 226
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/d;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    const/16 v1, 0x10

    invoke-static {v0, v2, v1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;II)V

    goto/16 :goto_0

    .line 231
    :sswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 232
    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_5

    .line 233
    const-string v0, "EVENT_PHONE_2_GPRS_ATTACHED"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 235
    :cond_5
    const-string v0, "EVENT_PHONE_2_GPRS_ATTACHED:Failed"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 239
    :sswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 240
    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_7

    .line 241
    const-string v0, "EVENT_PHONE_2_GPRS_DETACHED"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(Ljava/lang/String;)V

    .line 242
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/d;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    const-string v2, "Recv EVENT_PHONE_2_GPRS_DETACHED:"

    invoke-static {v0, v2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;Ljava/lang/String;)V

    .line 243
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/d;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;I)Lcom/android/internal/telephony/PhoneProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 244
    instance-of v2, v0, Lcom/android/internal/telephony/gsm/GSMPhone;

    if-eqz v2, :cond_6

    .line 245
    check-cast v0, Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    .line 246
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->gprsDetachResetAPN()V

    .line 248
    :cond_6
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/d;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    const/4 v2, 0x7

    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;II)V

    goto/16 :goto_0

    .line 250
    :cond_7
    const-string v0, "EVENT_PHONE_2_GPRS_DETACHED:Failed"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(Ljava/lang/String;)V

    .line 251
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/d;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    const-string v2, "Recv EVENT_PHONE_2_GPRS_DETACHED_FAIL:"

    invoke-static {v0, v2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;Ljava/lang/String;)V

    .line 252
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/d;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)[Z

    move-result-object v0

    aget-boolean v0, v0, v1

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/d;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->b(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)Lcom/android/internal/telephony/gemini/GeminiPhone;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->isSimInsert(I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 254
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/d;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    const/16 v2, 0x63

    invoke-virtual {v0, v1, v1, v2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->setThisSimAbortGprsAttachByDetach(IZI)V

    goto/16 :goto_0

    .line 256
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EVENT_PHONE_2_GPRS_DETACHED: skip retry since power off is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/telephony/gemini/d;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)[Z

    move-result-object v2

    aget-boolean v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", sim inserted is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/telephony/gemini/d;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->b(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)Lcom/android/internal/telephony/gemini/GeminiPhone;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->isSimInsert(I)Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(Ljava/lang/String;)V

    .line 258
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/d;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    const/16 v2, 0x11

    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;II)V

    goto/16 :goto_0

    .line 263
    :sswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 264
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EVENT_MONITOR_GPRS_ATTACH Timeout:previous_reqattach_simId="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(Ljava/lang/String;)V

    .line 265
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/d;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    const-string v4, "Recv MONITOR_GPRS_ATTACH Timeout Event:"

    invoke-static {v0, v4}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;Ljava/lang/String;)V

    .line 266
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/d;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->c(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)I

    move-result v0

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/d;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->d(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    move-result-object v0

    aget-object v0, v0, v3

    sget-object v4, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    if-eq v0, v4, :cond_9

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/d;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->d(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    move-result-object v0

    aget-object v0, v0, v3

    sget-object v4, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;->a:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    if-ne v0, v4, :cond_0

    .line 272
    :cond_9
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/d;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->e(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)[Ljava/lang/String;

    move-result-object v0

    aget-object v4, v0, v3

    .line 274
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isDualTalkMode()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 276
    if-nez v3, :cond_c

    move v0, v1

    .line 278
    :goto_1
    iget-object v1, p0, Lcom/android/internal/telephony/gemini/d;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->d(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    move-result-object v1

    aget-object v1, v1, v3

    sget-object v5, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    if-ne v1, v5, :cond_d

    .line 280
    iget-object v1, p0, Lcom/android/internal/telephony/gemini/d;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->d(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    move-result-object v1

    sget-object v5, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;->e:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    aput-object v5, v1, v3

    .line 281
    const-string v1, "[DT] change stae to RECOVERY!!"

    invoke-static {v1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(Ljava/lang/String;)V

    .line 283
    iget-object v1, p0, Lcom/android/internal/telephony/gemini/d;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->d(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    move-result-object v1

    aget-object v0, v1, v0

    sget-object v1, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    if-eq v0, v1, :cond_a

    .line 285
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/d;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v0, v6}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->b(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;I)I

    .line 287
    :cond_a
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/d;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)[Z

    move-result-object v0

    aput-boolean v2, v0, v3

    .line 290
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isDualTalkMode()Z

    move-result v0

    if-nez v0, :cond_b

    .line 292
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/d;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->g(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 293
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/d;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    sget-object v2, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;->d:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    invoke-static {v0, v2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;)Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    .line 294
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 297
    :cond_b
    const-string v0, "[DT]Kicking off an op and check states"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(Ljava/lang/String;)V

    .line 298
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/d;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->h(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 299
    iput v3, v0, Landroid/os/Message;->arg2:I

    .line 300
    iget-object v1, p0, Lcom/android/internal/telephony/gemini/d;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->h(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 341
    :goto_2
    const-string/jumbo v0, "mms"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 342
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/d;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v0, v3}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;I)Lcom/android/internal/telephony/PhoneProxy;

    move-result-object v0

    const-string/jumbo v1, "noSuchPdp"

    invoke-virtual {v0, v1, v4}, Lcom/android/internal/telephony/PhoneProxy;->notifyDataConnection(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_c
    move v0, v2

    .line 276
    goto :goto_1

    .line 294
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 306
    :cond_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[DT]Ignore other states when we receive GPRS Attach timeout event=>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gemini/d;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->d(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    move-result-object v1

    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(Ljava/lang/String;)V

    goto :goto_2

    .line 311
    :cond_e
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/d;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->d(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    move-result-object v0

    sget-object v5, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;->a:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    aput-object v5, v0, v3

    .line 312
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/d;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v0, v6}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->b(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;I)I

    .line 313
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/d;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)[Z

    move-result-object v0

    aput-boolean v2, v0, v3

    .line 314
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/d;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->i(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)[Z

    move-result-object v0

    aput-boolean v1, v0, v3

    .line 316
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isDualTalkMode()Z

    move-result v0

    if-nez v0, :cond_10

    .line 318
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/d;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->g(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 319
    :try_start_2
    sget-boolean v0, Lcom/android/internal/telephony/gemini/d;->a:Z

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/d;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->j(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    move-result-object v0

    sget-object v2, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;->c:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    if-eq v0, v2, :cond_f

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 321
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    .line 320
    :cond_f
    :try_start_3
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/d;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    sget-object v2, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;->d:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    invoke-static {v0, v2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;)Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    .line 321
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 323
    :cond_10
    const-string v0, "[C5]Kicking off an op and check states"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(Ljava/lang/String;)V

    .line 324
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/d;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->h(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 325
    iput v3, v0, Landroid/os/Message;->arg2:I

    .line 326
    iget-object v1, p0, Lcom/android/internal/telephony/gemini/d;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->h(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_2

    .line 344
    :cond_11
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/d;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v0, v3}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;I)Lcom/android/internal/telephony/PhoneProxy;

    move-result-object v0

    const-string v1, "gprsAttachedTimeout"

    invoke-virtual {v0, v1, v4}, Lcom/android/internal/telephony/PhoneProxy;->notifyDataConnection(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 350
    :sswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 351
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EVENT_MONITOR_GPRS_DETACH Timeout:previous_reqdetach_simId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(Ljava/lang/String;)V

    .line 352
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/d;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    const-string v1, "Recv MONITOR_GPRS_DETACH Timeout Event:"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 357
    :sswitch_6
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/d;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->g(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 358
    :try_start_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Recv EVENT_KICK_OFF_ONE:psOpState="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/android/internal/telephony/gemini/d;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v3}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->j(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(Ljava/lang/String;)V

    .line 359
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isDualTalkMode()Z

    move-result v0

    if-nez v0, :cond_12

    .line 360
    sget-boolean v0, Lcom/android/internal/telephony/gemini/d;->a:Z

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/d;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->j(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    move-result-object v0

    sget-object v3, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;->d:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    if-eq v0, v3, :cond_12

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 362
    :catchall_2
    move-exception v0

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v0

    :cond_12
    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 364
    const-string v0, "Wait for enable procedure"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(Ljava/lang/String;)V

    .line 365
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/d;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->k(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 366
    :try_start_6
    const-string v0, "enable procedure is done"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(Ljava/lang/String;)V

    .line 367
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 369
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isDualTalkMode()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 371
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/d;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->g(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 372
    :try_start_7
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/d;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    sget-object v3, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;->a:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    invoke-static {v0, v3}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;)Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    .line 373
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Change psOpState="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/android/internal/telephony/gemini/d;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v3}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->j(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(Ljava/lang/String;)V

    .line 374
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    .line 375
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/d;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->l(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 376
    :try_start_8
    iget v0, p1, Landroid/os/Message;->arg2:I

    .line 378
    sget-boolean v3, Lcom/android/internal/telephony/gemini/d;->a:Z

    if-nez v3, :cond_13

    if-eqz v0, :cond_13

    if-eq v0, v1, :cond_13

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 467
    :catchall_3
    move-exception v0

    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    throw v0

    .line 367
    :catchall_4
    move-exception v0

    :try_start_9
    monitor-exit v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    throw v0

    .line 374
    :catchall_5
    move-exception v0

    :try_start_a
    monitor-exit v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    throw v0

    .line 379
    :cond_13
    :try_start_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[DT]Recv EVENT_KICK_OFF_ONE: sim="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "cur state="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/internal/telephony/gemini/d;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v3}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->d(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    move-result-object v3

    aget-object v3, v3, v0

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", action="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/internal/telephony/gemini/d;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v3}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->m(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    move-result-object v3

    aget-object v3, v3, v0

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(Ljava/lang/String;)V

    .line 381
    iget-object v1, p0, Lcom/android/internal/telephony/gemini/d;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->d(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    move-result-object v1

    aget-object v1, v1, v0

    sget-object v3, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;->a:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    if-ne v1, v3, :cond_17

    .line 383
    iget-object v1, p0, Lcom/android/internal/telephony/gemini/d;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->m(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    move-result-object v1

    aget-object v1, v1, v0

    sget-object v3, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;->c:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    if-ne v1, v3, :cond_15

    .line 385
    iget-object v1, p0, Lcom/android/internal/telephony/gemini/d;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v1, v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->c(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;I)I

    .line 467
    :cond_14
    :goto_3
    monitor-exit v2

    goto/16 :goto_0

    .line 387
    :cond_15
    iget-object v1, p0, Lcom/android/internal/telephony/gemini/d;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->m(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    move-result-object v1

    aget-object v0, v1, v0

    sget-object v1, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;->a:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    if-ne v0, v1, :cond_16

    .line 389
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/d;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->g(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 390
    :try_start_c
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/d;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    sget-object v3, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;->a:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    invoke-static {v0, v3}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;)Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    .line 391
    monitor-exit v1

    goto :goto_3

    :catchall_6
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    :try_start_d
    throw v0

    .line 395
    :cond_16
    sget-boolean v0, Lcom/android/internal/telephony/gemini/d;->a:Z

    if-nez v0, :cond_14

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 399
    :cond_17
    iget-object v1, p0, Lcom/android/internal/telephony/gemini/d;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->d(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    move-result-object v1

    aget-object v1, v1, v0

    sget-object v3, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    if-eq v1, v3, :cond_14

    .line 402
    iget-object v1, p0, Lcom/android/internal/telephony/gemini/d;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->d(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    move-result-object v1

    aget-object v1, v1, v0

    sget-object v3, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;->c:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    if-ne v1, v3, :cond_1a

    .line 404
    iget-object v1, p0, Lcom/android/internal/telephony/gemini/d;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->m(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    move-result-object v1

    aget-object v1, v1, v0

    sget-object v3, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;->c:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    if-ne v1, v3, :cond_18

    .line 406
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[dual-talk]Same states(Attached), sim_id="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(Ljava/lang/String;)V

    .line 407
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/d;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->g(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    .line 408
    :try_start_e
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/d;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    sget-object v3, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;->a:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    invoke-static {v0, v3}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;)Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    .line 409
    monitor-exit v1

    goto :goto_3

    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_7

    :try_start_f
    throw v0

    .line 411
    :cond_18
    iget-object v1, p0, Lcom/android/internal/telephony/gemini/d;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->m(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    move-result-object v1

    aget-object v1, v1, v0

    sget-object v3, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;->a:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    if-ne v1, v3, :cond_19

    .line 413
    iget-object v1, p0, Lcom/android/internal/telephony/gemini/d;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v1, v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->d(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;I)I

    goto/16 :goto_3

    .line 417
    :cond_19
    sget-boolean v0, Lcom/android/internal/telephony/gemini/d;->a:Z

    if-nez v0, :cond_14

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 420
    :cond_1a
    iget-object v1, p0, Lcom/android/internal/telephony/gemini/d;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->d(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    move-result-object v1

    aget-object v1, v1, v0

    sget-object v3, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;->d:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    if-ne v1, v3, :cond_1c

    .line 422
    iget-object v1, p0, Lcom/android/internal/telephony/gemini/d;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->m(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    move-result-object v1

    aget-object v1, v1, v0

    sget-object v3, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;->c:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    if-ne v1, v3, :cond_1b

    .line 424
    iget-object v1, p0, Lcom/android/internal/telephony/gemini/d;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->d(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    move-result-object v1

    sget-object v3, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;->f:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    aput-object v3, v1, v0

    .line 425
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[DT]change state to="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/internal/telephony/gemini/d;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v3}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->d(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    move-result-object v3

    aget-object v0, v3, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 427
    :cond_1b
    iget-object v1, p0, Lcom/android/internal/telephony/gemini/d;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->m(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    move-result-object v1

    aget-object v0, v1, v0

    sget-object v1, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;->a:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    if-eq v0, v1, :cond_14

    .line 433
    sget-boolean v0, Lcom/android/internal/telephony/gemini/d;->a:Z

    if-nez v0, :cond_14

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 436
    :cond_1c
    iget-object v1, p0, Lcom/android/internal/telephony/gemini/d;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->d(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    move-result-object v1

    aget-object v1, v1, v0

    sget-object v3, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;->e:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    if-ne v1, v3, :cond_1f

    .line 438
    iget-object v1, p0, Lcom/android/internal/telephony/gemini/d;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->m(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    move-result-object v1

    aget-object v1, v1, v0

    sget-object v3, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;->c:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    if-ne v1, v3, :cond_1d

    .line 440
    iget-object v1, p0, Lcom/android/internal/telephony/gemini/d;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v1, v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->c(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;I)I

    goto/16 :goto_3

    .line 442
    :cond_1d
    iget-object v1, p0, Lcom/android/internal/telephony/gemini/d;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->m(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    move-result-object v1

    aget-object v1, v1, v0

    sget-object v3, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;->a:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    if-ne v1, v3, :cond_1e

    .line 444
    iget-object v1, p0, Lcom/android/internal/telephony/gemini/d;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v1, v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->d(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;I)I

    goto/16 :goto_3

    .line 448
    :cond_1e
    sget-boolean v0, Lcom/android/internal/telephony/gemini/d;->a:Z

    if-nez v0, :cond_14

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 451
    :cond_1f
    iget-object v1, p0, Lcom/android/internal/telephony/gemini/d;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->d(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    move-result-object v1

    aget-object v1, v1, v0

    sget-object v3, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;->f:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    if-ne v1, v3, :cond_21

    .line 453
    iget-object v1, p0, Lcom/android/internal/telephony/gemini/d;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->m(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    move-result-object v1

    aget-object v1, v1, v0

    sget-object v3, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;->a:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    if-ne v1, v3, :cond_20

    .line 455
    iget-object v1, p0, Lcom/android/internal/telephony/gemini/d;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->d(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    move-result-object v1

    sget-object v3, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;->d:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    aput-object v3, v1, v0

    .line 456
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[DT]change state to="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/internal/telephony/gemini/d;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v3}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->d(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    move-result-object v3

    aget-object v0, v3, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 458
    :cond_20
    iget-object v1, p0, Lcom/android/internal/telephony/gemini/d;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->m(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    move-result-object v1

    aget-object v0, v1, v0

    sget-object v1, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;->c:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    if-eq v0, v1, :cond_14

    .line 460
    sget-boolean v0, Lcom/android/internal/telephony/gemini/d;->a:Z

    if-nez v0, :cond_14

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 465
    :cond_21
    sget-boolean v0, Lcom/android/internal/telephony/gemini/d;->a:Z

    if-nez v0, :cond_14

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    .line 471
    :cond_22
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/d;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->l(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 473
    :try_start_10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Recv EVENT_KICK_OFF_ONE:req_ps_state1="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/telephony/gemini/d;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->m(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",req_ps_state2="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/telephony/gemini/d;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->m(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    move-result-object v2

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(Ljava/lang/String;)V

    .line 474
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/d;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    const-string v2, "[KICK_OFF_OP]"

    invoke-static {v0, v2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;Ljava/lang/String;)V

    .line 477
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/d;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->d(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    move-result-object v0

    const/4 v2, 0x0

    aget-object v0, v0, v2

    sget-object v2, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;->a:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    if-ne v0, v2, :cond_2c

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/d;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->d(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    move-result-object v0

    const/4 v2, 0x1

    aget-object v0, v0, v2

    sget-object v2, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;->a:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    if-ne v0, v2, :cond_2c

    .line 479
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/d;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->m(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    move-result-object v0

    const/4 v2, 0x0

    aget-object v0, v0, v2

    sget-object v2, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;->a:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    if-eq v0, v2, :cond_23

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/d;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->m(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    move-result-object v0

    const/4 v2, 0x0

    aget-object v0, v0, v2

    if-nez v0, :cond_28

    :cond_23
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/d;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->m(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    move-result-object v0

    const/4 v2, 0x1

    aget-object v0, v0, v2

    sget-object v2, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;->a:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    if-eq v0, v2, :cond_24

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/d;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->m(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    move-result-object v0

    const/4 v2, 0x1

    aget-object v0, v0, v2

    if-nez v0, :cond_28

    .line 482
    :cond_24
    const-string v0, "[C1]Same both Detached states,but check if detached due to monitor attach timeout"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(Ljava/lang/String;)V

    .line 484
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/d;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->i(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)[Z

    move-result-object v0

    const/4 v2, 0x0

    aget-boolean v0, v0, v2

    if-eqz v0, :cond_26

    .line 487
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/d;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->g(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_8

    .line 488
    :try_start_11
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/d;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    sget-object v3, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    invoke-static {v0, v3}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;)Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    .line 489
    monitor-exit v2
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_9

    .line 490
    :try_start_12
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/d;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->d(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;I)I

    .line 637
    :cond_25
    :goto_4
    monitor-exit v1

    goto/16 :goto_0

    :catchall_8
    move-exception v0

    monitor-exit v1
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_8

    throw v0

    .line 489
    :catchall_9
    move-exception v0

    :try_start_13
    monitor-exit v2
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_9

    :try_start_14
    throw v0

    .line 491
    :cond_26
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/d;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->i(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)[Z

    move-result-object v0

    const/4 v2, 0x1

    aget-boolean v0, v0, v2

    if-eqz v0, :cond_27

    .line 494
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/d;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->g(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_8

    .line 495
    :try_start_15
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/d;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    sget-object v3, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    invoke-static {v0, v3}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;)Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    .line 496
    monitor-exit v2
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_a

    .line 497
    :try_start_16
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/d;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->d(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;I)I
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_8

    goto :goto_4

    .line 496
    :catchall_a
    move-exception v0

    :try_start_17
    monitor-exit v2
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_a

    :try_start_18
    throw v0

    .line 499
    :cond_27
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/d;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->g(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_8

    .line 500
    :try_start_19
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/d;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    sget-object v3, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;->a:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    invoke-static {v0, v3}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;)Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    .line 501
    monitor-exit v2

    goto :goto_4

    :catchall_b
    move-exception v0

    monitor-exit v2
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_b

    :try_start_1a
    throw v0

    .line 504
    :cond_28
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/d;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->m(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    move-result-object v0

    const/4 v2, 0x0

    aget-object v0, v0, v2

    sget-object v2, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;->c:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    if-ne v0, v2, :cond_2a

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/d;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->m(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    move-result-object v0

    const/4 v2, 0x1

    aget-object v0, v0, v2

    sget-object v2, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;->a:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    if-eq v0, v2, :cond_29

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/d;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->m(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    move-result-object v0

    const/4 v2, 0x1

    aget-object v0, v0, v2

    if-nez v0, :cond_2a

    .line 508
    :cond_29
    const-string v0, "[C2]Compare current and requested gprs states(from NONE to SIM1)"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(Ljava/lang/String;)V

    .line 509
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/d;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->g(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_8

    .line 510
    :try_start_1b
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/d;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    sget-object v3, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;->c:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    invoke-static {v0, v3}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;)Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    .line 511
    monitor-exit v2
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_c

    .line 512
    :try_start_1c
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/d;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->c(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;I)I
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_8

    goto :goto_4

    .line 511
    :catchall_c
    move-exception v0

    :try_start_1d
    monitor-exit v2
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_c

    :try_start_1e
    throw v0

    .line 513
    :cond_2a
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/d;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->m(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    move-result-object v0

    const/4 v2, 0x0

    aget-object v0, v0, v2

    sget-object v2, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;->a:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    if-eq v0, v2, :cond_2b

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/d;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->m(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    move-result-object v0

    const/4 v2, 0x0

    aget-object v0, v0, v2

    if-nez v0, :cond_25

    :cond_2b
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/d;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->m(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    move-result-object v0

    const/4 v2, 0x1

    aget-object v0, v0, v2

    sget-object v2, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;->c:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    if-ne v0, v2, :cond_25

    .line 515
    const-string v0, "[C3]Compare current and requested gprs states(from NONE to SIM2)"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(Ljava/lang/String;)V

    .line 516
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/d;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->g(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_8

    .line 517
    :try_start_1f
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/d;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    sget-object v3, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;->c:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    invoke-static {v0, v3}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;)Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    .line 518
    monitor-exit v2
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_d

    .line 519
    :try_start_20
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/d;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->c(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;I)I
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_8

    goto/16 :goto_4

    .line 518
    :catchall_d
    move-exception v0

    :try_start_21
    monitor-exit v2
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_d

    :try_start_22
    throw v0

    .line 522
    :cond_2c
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/d;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->d(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    move-result-object v0

    const/4 v2, 0x0

    aget-object v0, v0, v2

    sget-object v2, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;->a:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    if-ne v0, v2, :cond_35

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/d;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->d(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    move-result-object v0

    const/4 v2, 0x1

    aget-object v0, v0, v2

    sget-object v2, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;->c:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    if-ne v0, v2, :cond_35

    .line 524
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/d;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->m(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    move-result-object v0

    const/4 v2, 0x0

    aget-object v0, v0, v2

    sget-object v2, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;->a:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    if-eq v0, v2, :cond_2d

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/d;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->m(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    move-result-object v0

    const/4 v2, 0x0

    aget-object v0, v0, v2

    if-nez v0, :cond_2e

    :cond_2d
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/d;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->m(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    move-result-object v0

    const/4 v2, 0x1

    aget-object v0, v0, v2

    sget-object v2, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;->c:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    if-ne v0, v2, :cond_2e

    .line 528
    const-string v0, "[C4]Same states(SIM1:Detached;SIM2:Attached)"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(Ljava/lang/String;)V

    .line 529
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/d;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->g(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_8

    .line 530
    :try_start_23
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/d;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    sget-object v3, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;->a:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    invoke-static {v0, v3}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;)Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    .line 531
    monitor-exit v2

    goto/16 :goto_4

    :catchall_e
    move-exception v0

    monitor-exit v2
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_e

    :try_start_24
    throw v0

    .line 533
    :cond_2e
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/d;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->m(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    move-result-object v0

    const/4 v2, 0x0

    aget-object v0, v0, v2

    sget-object v2, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;->c:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    if-ne v0, v2, :cond_30

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/d;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->m(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    move-result-object v0

    const/4 v2, 0x1

    aget-object v0, v0, v2

    sget-object v2, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;->a:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    if-eq v0, v2, :cond_2f

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/d;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->m(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    move-result-object v0

    const/4 v2, 0x1

    aget-object v0, v0, v2

    if-nez v0, :cond_30

    .line 538
    :cond_2f
    const-string v0, "[C5]Compare current and requested gprs states(from SIM2 to SIM1)"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(Ljava/lang/String;)V

    .line 539
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/d;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->g(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_8

    .line 540
    :try_start_25
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/d;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    sget-object v3, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    invoke-static {v0, v3}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;)Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    .line 541
    monitor-exit v2
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_f

    .line 543
    :try_start_26
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/d;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->b(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;I)I

    .line 544
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/d;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;Z)Z

    .line 545
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/d;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->d(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;I)I
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_8

    goto/16 :goto_4

    .line 541
    :catchall_f
    move-exception v0

    :try_start_27
    monitor-exit v2
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_f

    :try_start_28
    throw v0

    .line 547
    :cond_30
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/d;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->m(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    move-result-object v0

    const/4 v2, 0x0

    aget-object v0, v0, v2

    sget-object v2, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;->a:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    if-eq v0, v2, :cond_31

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/d;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->m(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    move-result-object v0

    const/4 v2, 0x0

    aget-object v0, v0, v2

    if-nez v0, :cond_32

    :cond_31
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/d;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->m(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    move-result-object v0

    const/4 v2, 0x1

    aget-object v0, v0, v2

    sget-object v2, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;->a:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    if-ne v0, v2, :cond_32

    .line 550
    const-string v0, "[C6]Compare current and requested gprs states(from SIM2 to NONE)"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(Ljava/lang/String;)V

    .line 551
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/d;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->g(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_8

    .line 552
    :try_start_29
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/d;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    sget-object v3, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    invoke-static {v0, v3}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;)Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    .line 553
    monitor-exit v2
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_10

    .line 554
    :try_start_2a
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/d;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->d(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;I)I
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_8

    goto/16 :goto_4

    .line 553
    :catchall_10
    move-exception v0

    :try_start_2b
    monitor-exit v2
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_10

    :try_start_2c
    throw v0

    .line 555
    :cond_32
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/d;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->m(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    move-result-object v0

    const/4 v2, 0x0

    aget-object v0, v0, v2

    if-nez v0, :cond_33

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/d;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->m(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    move-result-object v0

    const/4 v2, 0x1

    aget-object v0, v0, v2

    if-nez v0, :cond_33

    .line 557
    const-string v0, "[C7]Power On:SIM2 attached"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(Ljava/lang/String;)V

    .line 559
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/d;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->g(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_8

    .line 560
    :try_start_2d
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/d;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    sget-object v3, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;->a:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    invoke-static {v0, v3}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;)Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    .line 561
    monitor-exit v2

    goto/16 :goto_4

    :catchall_11
    move-exception v0

    monitor-exit v2
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_11

    :try_start_2e
    throw v0

    .line 562
    :cond_33
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/d;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->m(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    move-result-object v0

    const/4 v2, 0x0

    aget-object v0, v0, v2

    sget-object v2, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;->a:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    if-ne v0, v2, :cond_34

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/d;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->m(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    move-result-object v0

    const/4 v2, 0x1

    aget-object v0, v0, v2

    if-nez v0, :cond_34

    .line 566
    const-string v0, "[C7-2]Power On:SIM2 attached,then requests to send MMS via SIM2 via check SIM1\'s detached first"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(Ljava/lang/String;)V

    .line 568
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/d;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->g(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_8

    .line 569
    :try_start_2f
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/d;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    sget-object v3, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;->a:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    invoke-static {v0, v3}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;)Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    .line 570
    monitor-exit v2

    goto/16 :goto_4

    :catchall_12
    move-exception v0

    monitor-exit v2
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_12

    :try_start_30
    throw v0

    .line 572
    :cond_34
    const-string v0, "[C7-3]Not update gprs_op_state:still as KICKING"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 574
    :cond_35
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/d;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->d(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    move-result-object v0

    const/4 v2, 0x0

    aget-object v0, v0, v2

    sget-object v2, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;->c:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    if-ne v0, v2, :cond_3e

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/d;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->d(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    move-result-object v0

    const/4 v2, 0x1

    aget-object v0, v0, v2

    sget-object v2, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;->a:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    if-ne v0, v2, :cond_3e

    .line 576
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/d;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->m(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    move-result-object v0

    const/4 v2, 0x0

    aget-object v0, v0, v2

    sget-object v2, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;->c:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    if-ne v0, v2, :cond_37

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/d;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->m(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    move-result-object v0

    const/4 v2, 0x1

    aget-object v0, v0, v2

    sget-object v2, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;->a:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    if-eq v0, v2, :cond_36

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/d;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->m(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    move-result-object v0

    const/4 v2, 0x1

    aget-object v0, v0, v2

    if-nez v0, :cond_37

    .line 580
    :cond_36
    const-string v0, "[C8]Same states(SIM1:Attached;SIM2:Detached)"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(Ljava/lang/String;)V

    .line 581
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/d;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->g(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_30
    .catchall {:try_start_30 .. :try_end_30} :catchall_8

    .line 582
    :try_start_31
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/d;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    sget-object v3, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;->a:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    invoke-static {v0, v3}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;)Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    .line 583
    monitor-exit v2

    goto/16 :goto_4

    :catchall_13
    move-exception v0

    monitor-exit v2
    :try_end_31
    .catchall {:try_start_31 .. :try_end_31} :catchall_13

    :try_start_32
    throw v0

    .line 585
    :cond_37
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/d;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->m(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    move-result-object v0

    const/4 v2, 0x0

    aget-object v0, v0, v2

    sget-object v2, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;->a:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    if-eq v0, v2, :cond_38

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/d;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->m(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    move-result-object v0

    const/4 v2, 0x0

    aget-object v0, v0, v2

    if-nez v0, :cond_39

    :cond_38
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/d;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->m(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    move-result-object v0

    const/4 v2, 0x1

    aget-object v0, v0, v2

    sget-object v2, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;->c:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    if-ne v0, v2, :cond_39

    .line 588
    const-string v0, "[C9]Compare current and requested gprs states(from SIM1 to SIM2)"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(Ljava/lang/String;)V

    .line 590
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/d;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->b(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;I)I

    .line 591
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/d;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;Z)Z

    .line 592
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/d;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->g(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_32
    .catchall {:try_start_32 .. :try_end_32} :catchall_8

    .line 593
    :try_start_33
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/d;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    sget-object v3, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    invoke-static {v0, v3}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;)Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    .line 594
    monitor-exit v2
    :try_end_33
    .catchall {:try_start_33 .. :try_end_33} :catchall_14

    .line 595
    :try_start_34
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/d;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->d(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;I)I
    :try_end_34
    .catchall {:try_start_34 .. :try_end_34} :catchall_8

    goto/16 :goto_4

    .line 594
    :catchall_14
    move-exception v0

    :try_start_35
    monitor-exit v2
    :try_end_35
    .catchall {:try_start_35 .. :try_end_35} :catchall_14

    :try_start_36
    throw v0

    .line 597
    :cond_39
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/d;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->m(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    move-result-object v0

    const/4 v2, 0x0

    aget-object v0, v0, v2

    sget-object v2, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;->a:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    if-ne v0, v2, :cond_3b

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/d;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->m(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    move-result-object v0

    const/4 v2, 0x1

    aget-object v0, v0, v2

    sget-object v2, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;->a:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    if-eq v0, v2, :cond_3a

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/d;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->m(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    move-result-object v0

    const/4 v2, 0x1

    aget-object v0, v0, v2

    if-nez v0, :cond_3b

    .line 602
    :cond_3a
    const-string v0, "[C10]Compare current and requested gprs states(from SIM1 to NONE)"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(Ljava/lang/String;)V

    .line 603
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/d;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->g(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_36
    .catchall {:try_start_36 .. :try_end_36} :catchall_8

    .line 604
    :try_start_37
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/d;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    sget-object v3, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    invoke-static {v0, v3}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;)Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    .line 605
    monitor-exit v2
    :try_end_37
    .catchall {:try_start_37 .. :try_end_37} :catchall_15

    .line 606
    :try_start_38
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/d;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->d(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;I)I
    :try_end_38
    .catchall {:try_start_38 .. :try_end_38} :catchall_8

    goto/16 :goto_4

    .line 605
    :catchall_15
    move-exception v0

    :try_start_39
    monitor-exit v2
    :try_end_39
    .catchall {:try_start_39 .. :try_end_39} :catchall_15

    :try_start_3a
    throw v0

    .line 607
    :cond_3b
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/d;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->m(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    move-result-object v0

    const/4 v2, 0x0

    aget-object v0, v0, v2

    if-nez v0, :cond_3c

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/d;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->m(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    move-result-object v0

    const/4 v2, 0x1

    aget-object v0, v0, v2

    if-nez v0, :cond_3c

    .line 609
    const-string v0, "[C11]Power On:SIM1 attached"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(Ljava/lang/String;)V

    .line 611
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/d;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->g(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_3a
    .catchall {:try_start_3a .. :try_end_3a} :catchall_8

    .line 612
    :try_start_3b
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/d;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    sget-object v3, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;->a:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    invoke-static {v0, v3}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;)Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    .line 613
    monitor-exit v2

    goto/16 :goto_4

    :catchall_16
    move-exception v0

    monitor-exit v2
    :try_end_3b
    .catchall {:try_start_3b .. :try_end_3b} :catchall_16

    :try_start_3c
    throw v0

    .line 614
    :cond_3c
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/d;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->m(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    move-result-object v0

    const/4 v2, 0x0

    aget-object v0, v0, v2

    if-nez v0, :cond_3d

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/d;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->m(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    move-result-object v0

    const/4 v2, 0x1

    aget-object v0, v0, v2

    sget-object v2, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;->a:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    if-ne v0, v2, :cond_3d

    .line 618
    const-string v0, "[C11-2]Power On:SIM1 attached,then requests to send MMS via SIM1 via check SIM2\'s detached first"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(Ljava/lang/String;)V

    .line 620
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/d;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->g(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_3c
    .catchall {:try_start_3c .. :try_end_3c} :catchall_8

    .line 621
    :try_start_3d
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/d;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    sget-object v3, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;->a:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    invoke-static {v0, v3}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;)Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    .line 622
    monitor-exit v2

    goto/16 :goto_4

    :catchall_17
    move-exception v0

    monitor-exit v2
    :try_end_3d
    .catchall {:try_start_3d .. :try_end_3d} :catchall_17

    :try_start_3e
    throw v0

    .line 624
    :cond_3d
    const-string v0, "[C11-3]Not update gprs_op_state:still as KICKING"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 627
    :cond_3e
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/d;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->d(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    move-result-object v0

    const/4 v2, 0x0

    aget-object v0, v0, v2

    sget-object v2, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;->c:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    if-ne v0, v2, :cond_25

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/d;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->d(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    move-result-object v0

    const/4 v2, 0x1

    aget-object v0, v0, v2

    sget-object v2, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;->c:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    if-ne v0, v2, :cond_25

    .line 629
    const-string v0, "Not expceted states both SIM1 and SIM2 attached!"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(Ljava/lang/String;)V

    .line 630
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/d;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->d(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    move-result-object v0

    const/4 v2, 0x0

    aget-object v0, v0, v2

    sget-object v2, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;->c:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    if-ne v0, v2, :cond_3f

    .line 631
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/d;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->resetGprsRelatedContext(I)V

    .line 635
    :goto_5
    sget-boolean v0, Lcom/android/internal/telephony/gemini/d;->a:Z

    if-nez v0, :cond_25

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 633
    :cond_3f
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/d;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->resetGprsRelatedContext(I)V
    :try_end_3e
    .catchall {:try_start_3e .. :try_end_3e} :catchall_8

    goto :goto_5

    .line 196
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x5 -> :sswitch_4
        0x6 -> :sswitch_5
        0x14 -> :sswitch_6
    .end sparse-switch
.end method
