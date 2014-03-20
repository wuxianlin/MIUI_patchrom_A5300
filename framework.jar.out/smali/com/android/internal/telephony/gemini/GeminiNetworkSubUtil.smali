.class public Lcom/android/internal/telephony/gemini/GeminiNetworkSubUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final CONN_TYPE_ALWAYS:I = 0x1

.field public static final CONN_TYPE_WHEN_NEEDED:I = 0x0

.field public static final MODE_DUAL_SIM:I = 0x3

.field public static final MODE_FLIGHT_MODE:I = 0x0

.field public static final MODE_GPRS_AUTO_ATTACH:I = 0x1

.field public static final MODE_GPRS_NOT_ATTACH:I = 0x0

.field public static final MODE_GPRS_USER_SELECT:I = 0x2

.field public static final MODE_POWER_OFF:I = -0x1

.field public static final MODE_QUAD_SIM:I = 0xf

.field public static final MODE_SIM1_ONLY:I = 0x1

.field public static final MODE_SIM2_ONLY:I = 0x2

.field public static final MODE_SIM3_ONLY:I = 0x4

.field public static final MODE_SIM4_ONLY:I = 0x8

.field public static final MODE_TRIPLE_SIM:I = 0x7

.field private static a:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 87
    const/4 v0, -0x1

    sput v0, Lcom/android/internal/telephony/gemini/GeminiNetworkSubUtil;->a:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 64
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Lcom/android/internal/telephony/gemini/GeminiPhone;I)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 90
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 94
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "boot_up_select_mode"

    invoke-static {v0, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 98
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "dual_sim_mode_setting"

    const/4 v3, 0x3

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 106
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[bootUp]airplaneMode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " selectByUser:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " dualSimModeSetting:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " SIM status:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/gemini/GeminiNetworkSubUtil;->a(Ljava/lang/String;)V

    .line 112
    const-string v2, "gsm.sim.inserted"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    if-lez v1, :cond_0

    .line 115
    invoke-static {p0, v4, p1, v5}, Lcom/android/internal/telephony/gemini/GeminiNetworkSubUtil;->a(Lcom/android/internal/telephony/gemini/GeminiPhone;IIZ)V

    .line 159
    :goto_0
    return-void

    .line 140
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/gemini/GeminiRadioStatusUtil;->getSIMMode()I

    move-result v1

    .line 141
    if-eq v1, v0, :cond_1

    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Sim mode from ICCID is different than dual sim mode, to sync with insert status ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiNetworkSubUtil;->a(Ljava/lang/String;)V

    move v0, p1

    .line 146
    :cond_1
    if-eq v0, v5, :cond_2

    if-ne v0, v6, :cond_4

    .line 147
    :cond_2
    if-eq p1, v5, :cond_3

    if-ne p1, v6, :cond_4

    .line 148
    :cond_3
    if-eq v0, p1, :cond_4

    .line 149
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Dual sim mode is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " and inserted status is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sync two values"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiNetworkSubUtil;->a(Ljava/lang/String;)V

    move v0, p1

    .line 155
    :cond_4
    invoke-static {p0, v0, p1, v5}, Lcom/android/internal/telephony/gemini/GeminiNetworkSubUtil;->a(Lcom/android/internal/telephony/gemini/GeminiPhone;IIZ)V

    goto :goto_0
.end method

.method static a(Lcom/android/internal/telephony/gemini/GeminiPhone;IIZ)V
    .locals 11
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 162
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 163
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    .line 164
    invoke-static {}, Lcom/android/internal/telephony/gemini/GeminiRadioStatusUtil;->getSIMMode()I

    move-result v6

    .line 166
    and-int/lit8 v0, v6, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    move v5, v0

    .line 167
    :goto_0
    and-int/lit8 v0, v6, 0x2

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    move v4, v0

    .line 168
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setRadioMode:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiNetworkSubUtil;->a(Ljava/lang/String;)V

    move-object v0, v1

    .line 171
    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneBase;

    move-object v2, v3

    .line 172
    check-cast v2, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/PhoneBase;

    .line 173
    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/ServiceStateTracker;->getDesiredPowerState()Z

    move-result v7

    .line 174
    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/ServiceStateTracker;->getDesiredPowerState()Z

    move-result v8

    .line 176
    packed-switch p1, :pswitch_data_0

    .line 231
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Abnormal! Wrong mode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiNetworkSubUtil;->a(Ljava/lang/String;)V

    .line 380
    :goto_2
    return-void

    .line 166
    :cond_0
    const/4 v0, 0x0

    move v5, v0

    goto/16 :goto_0

    .line 167
    :cond_1
    const/4 v0, 0x0

    move v4, v0

    goto/16 :goto_1

    .line 178
    :pswitch_0
    invoke-interface {v1, v5}, Lcom/android/internal/telephony/Phone;->setRadioPower(Z)V

    .line 179
    const/4 v0, 0x0

    invoke-interface {v3, v0}, Lcom/android/internal/telephony/Phone;->setRadioPower(Z)V

    .line 180
    if-nez v5, :cond_2

    .line 181
    const/4 p1, 0x0

    .line 235
    :cond_2
    :goto_3
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "airplane_mode_on"

    const/4 v4, 0x0

    invoke-static {v0, v2, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 239
    const/4 v0, -0x1

    if-ne p1, v0, :cond_f

    .line 240
    const-string v0, "Power-off, not to refresh dual SIM mode setting"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiNetworkSubUtil;->a(Ljava/lang/String;)V

    .line 264
    :cond_3
    :goto_4
    invoke-static {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiNetworkSubUtil;->b(Lcom/android/internal/telephony/gemini/GeminiPhone;I)V

    .line 265
    const-string v0, "gsm.3gswitch"

    const/4 v2, 0x1

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_12

    const/4 v0, 0x1

    move v2, v0

    .line 267
    :goto_5
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isDualTalkMode()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 268
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isFlightModePowerOffMD()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 269
    const/4 v0, -0x1

    if-eq p1, v0, :cond_1f

    .line 270
    const/4 v0, 0x1

    if-ne v4, v0, :cond_14

    .line 271
    if-nez p3, :cond_13

    .line 272
    const-string v0, "airplane mode and turn off MD now"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiNetworkSubUtil;->a(Ljava/lang/String;)V

    move-object v0, v1

    .line 273
    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    const/4 v2, -0x1

    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Lcom/android/internal/telephony/PhoneProxy;->setRadioMode(ILandroid/os/Message;)V

    move-object v0, v3

    .line 274
    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    const/4 v2, -0x1

    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Lcom/android/internal/telephony/PhoneProxy;->setRadioMode(ILandroid/os/Message;)V

    .line 366
    :cond_4
    :goto_6
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    .line 367
    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    .line 368
    if-eqz v0, :cond_6

    if-eqz v2, :cond_6

    .line 369
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Current service state ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "], mode: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/gemini/GeminiNetworkSubUtil;->a(Ljava/lang/String;)V

    .line 370
    const/4 v4, -0x1

    if-eq p1, v4, :cond_5

    if-nez p1, :cond_6

    :cond_5
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    const/4 v4, 0x3

    if-ne v0, v4, :cond_6

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_6

    .line 373
    const-string v0, "Already in power off state, force notify"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiNetworkSubUtil;->a(Ljava/lang/String;)V

    .line 374
    check-cast v1, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneProxy;->forceNotifyServiceStateChange()V

    .line 375
    check-cast v3, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneProxy;->forceNotifyServiceStateChange()V

    .line 379
    :cond_6
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->setDualSimMode(I)V

    goto/16 :goto_2

    .line 184
    :pswitch_1
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Lcom/android/internal/telephony/Phone;->setRadioPower(Z)V

    .line 185
    invoke-interface {v3, v4}, Lcom/android/internal/telephony/Phone;->setRadioPower(Z)V

    .line 186
    if-nez v4, :cond_2

    .line 187
    const/4 p1, 0x0

    goto/16 :goto_3

    .line 190
    :pswitch_2
    const/4 v0, 0x3

    if-ne p2, v0, :cond_a

    .line 191
    invoke-interface {v1, v5}, Lcom/android/internal/telephony/Phone;->setRadioPower(Z)V

    .line 192
    invoke-interface {v3, v4}, Lcom/android/internal/telephony/Phone;->setRadioPower(Z)V

    .line 193
    if-eqz v5, :cond_7

    if-eqz v4, :cond_7

    .line 194
    const/4 p1, 0x3

    goto/16 :goto_3

    .line 195
    :cond_7
    if-nez v5, :cond_8

    if-nez v4, :cond_8

    .line 196
    const/4 p1, 0x0

    goto/16 :goto_3

    .line 197
    :cond_8
    if-eqz v5, :cond_9

    .line 198
    const/4 p1, 0x1

    goto/16 :goto_3

    .line 199
    :cond_9
    if-eqz v4, :cond_2

    .line 200
    const/4 p1, 0x2

    goto/16 :goto_3

    .line 202
    :cond_a
    const/4 v0, 0x1

    if-ne p2, v0, :cond_c

    .line 203
    invoke-interface {v1, v5}, Lcom/android/internal/telephony/Phone;->setRadioPower(Z)V

    .line 204
    const/4 v0, 0x0

    invoke-interface {v3, v0}, Lcom/android/internal/telephony/Phone;->setRadioPower(Z)V

    .line 205
    if-eqz v5, :cond_b

    .line 206
    const/4 v0, 0x1

    .line 222
    :goto_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Warning! Request Dual mode but not enough SIM, status:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " mode:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/gemini/GeminiNetworkSubUtil;->a(Ljava/lang/String;)V

    move p1, v0

    .line 224
    goto/16 :goto_3

    .line 208
    :cond_b
    const/4 v0, 0x0

    goto :goto_7

    .line 209
    :cond_c
    const/4 v0, 0x2

    if-ne p2, v0, :cond_e

    .line 210
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Lcom/android/internal/telephony/Phone;->setRadioPower(Z)V

    .line 211
    invoke-interface {v3, v4}, Lcom/android/internal/telephony/Phone;->setRadioPower(Z)V

    .line 212
    if-eqz v4, :cond_d

    .line 213
    const/4 v0, 0x2

    goto :goto_7

    .line 215
    :cond_d
    const/4 v0, 0x0

    goto :goto_7

    .line 218
    :cond_e
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Lcom/android/internal/telephony/Phone;->setRadioPower(Z)V

    .line 219
    const/4 v0, 0x0

    invoke-interface {v3, v0}, Lcom/android/internal/telephony/Phone;->setRadioPower(Z)V

    .line 220
    const/4 v0, 0x0

    goto :goto_7

    .line 227
    :pswitch_3
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Lcom/android/internal/telephony/Phone;->setRadioPower(Z)V

    .line 228
    const/4 v0, 0x0

    invoke-interface {v3, v0}, Lcom/android/internal/telephony/Phone;->setRadioPower(Z)V

    goto/16 :goto_3

    .line 242
    :cond_f
    if-nez p2, :cond_10

    .line 243
    const-string v0, "No SIM inserted, refresh dual SIM  mode to MODE_DUAL_SIM"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiNetworkSubUtil;->a(Ljava/lang/String;)V

    .line 244
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "dual_sim_mode_setting"

    const/4 v5, 0x3

    invoke-static {v0, v2, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 247
    if-nez v4, :cond_3

    .line 248
    const-string v0, "No SIM inserted, force to turn on SIM1 radio!"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiNetworkSubUtil;->a(Ljava/lang/String;)V

    .line 249
    const/4 p1, 0x1

    goto/16 :goto_4

    .line 252
    :cond_10
    const/4 v0, 0x1

    if-ne v4, v0, :cond_11

    .line 253
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Refresh dual SIM mode setting under air plane mode: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiNetworkSubUtil;->a(Ljava/lang/String;)V

    .line 254
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "dual_sim_mode_setting"

    invoke-static {v0, v2, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_4

    .line 257
    :cond_11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Refresh dual SIM mode setting: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiNetworkSubUtil;->a(Ljava/lang/String;)V

    .line 258
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "dual_sim_mode_setting"

    invoke-static {v0, v2, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_4

    .line 265
    :cond_12
    const/4 v0, 0x0

    move v2, v0

    goto/16 :goto_5

    .line 279
    :cond_13
    const-string v0, "Air plane mode but is boot up (dt), do nothing"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiNetworkSubUtil;->a(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 281
    :cond_14
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isRadioOffPowerOffMD()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 282
    invoke-virtual {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getDualSimMode()I

    move-result v5

    .line 283
    const/4 v4, 0x0

    .line 284
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Check if need to boot up modem ["

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ", "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ", "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ", "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "]"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiNetworkSubUtil;->a(Ljava/lang/String;)V

    .line 285
    and-int/lit8 v0, v5, 0x1

    and-int/lit8 v6, p1, 0x1

    if-eq v0, v6, :cond_15

    .line 286
    and-int/lit8 v0, p1, 0x1

    if-lez v0, :cond_18

    .line 287
    if-nez v7, :cond_15

    .line 288
    if-eqz p3, :cond_17

    .line 289
    const-string/jumbo v0, "skip up phone1 since this is already in bootup flow"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiNetworkSubUtil;->a(Ljava/lang/String;)V

    .line 301
    :cond_15
    :goto_8
    and-int/lit8 v0, v5, 0x2

    and-int/lit8 v6, p1, 0x2

    if-eq v0, v6, :cond_1b

    .line 302
    and-int/lit8 v0, p1, 0x2

    if-lez v0, :cond_1a

    .line 303
    if-nez v8, :cond_1b

    .line 304
    if-eqz p3, :cond_19

    .line 305
    const-string/jumbo v0, "skip up phone2 since this is already in bootup flow"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiNetworkSubUtil;->a(Ljava/lang/String;)V

    move v0, v4

    .line 317
    :goto_9
    if-eqz v0, :cond_16

    const/4 v4, -0x1

    if-eq p1, v4, :cond_16

    and-int/lit8 v4, v5, 0x1

    and-int/lit8 v6, p1, 0x1

    if-ne v4, v6, :cond_4

    and-int/lit8 v4, v5, 0x2

    and-int/lit8 v5, p1, 0x2

    if-ne v4, v5, :cond_4

    .line 321
    :cond_16
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Radio mode is the same with previous one or no power on MD, continue power on radio ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "]"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiNetworkSubUtil;->a(Ljava/lang/String;)V

    .line 322
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isDualTalkMode()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 323
    const/4 v0, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0, v0, v2, v4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 324
    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {p0, v2, v4, v5}, Lcom/android/internal/telephony/gemini/GeminiPhone;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    .line 325
    invoke-static {p0, p1, v0, v2}, Lcom/android/internal/telephony/gemini/GeminiNetworkSubUtil;->a(Lcom/android/internal/telephony/gemini/GeminiPhone;ILandroid/os/Message;Landroid/os/Message;)V

    goto/16 :goto_6

    .line 291
    :cond_17
    const-string v0, "boot up phone1"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiNetworkSubUtil;->a(Ljava/lang/String;)V

    move-object v0, v1

    .line 292
    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->setRadioPowerOn()V

    .line 293
    const/4 v4, 0x1

    goto :goto_8

    .line 297
    :cond_18
    const-string/jumbo v0, "shutdown phone1"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiNetworkSubUtil;->a(Ljava/lang/String;)V

    move-object v0, v1

    .line 298
    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    const/4 v6, -0x1

    const/4 v7, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {p0, v7, v9, v10}, Lcom/android/internal/telephony/gemini/GeminiPhone;->obtainMessage(III)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Lcom/android/internal/telephony/PhoneProxy;->setRadioMode(ILandroid/os/Message;)V

    goto :goto_8

    .line 307
    :cond_19
    const-string v0, "boot up phone2"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiNetworkSubUtil;->a(Ljava/lang/String;)V

    move-object v0, v3

    .line 308
    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->setRadioPowerOn()V

    .line 309
    const/4 v0, 0x1

    goto :goto_9

    .line 313
    :cond_1a
    const-string/jumbo v0, "shutdown phone2"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiNetworkSubUtil;->a(Ljava/lang/String;)V

    move-object v0, v3

    .line 314
    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    const/4 v6, -0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-virtual {p0, v7, v8, v9}, Lcom/android/internal/telephony/gemini/GeminiPhone;->obtainMessage(III)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Lcom/android/internal/telephony/PhoneProxy;->setRadioMode(ILandroid/os/Message;)V

    :cond_1b
    move v0, v4

    goto/16 :goto_9

    .line 327
    :cond_1c
    if-eqz v2, :cond_1d

    move-object v0, v3

    .line 328
    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Lcom/android/internal/telephony/PhoneProxy;->setRadioMode(ILandroid/os/Message;)V

    goto/16 :goto_6

    :cond_1d
    move-object v0, v1

    .line 330
    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Lcom/android/internal/telephony/PhoneProxy;->setRadioMode(ILandroid/os/Message;)V

    goto/16 :goto_6

    .line 334
    :cond_1e
    const/4 v0, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0, v0, v2, v4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 335
    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {p0, v2, v4, v5}, Lcom/android/internal/telephony/gemini/GeminiPhone;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    .line 336
    invoke-static {p0, p1, v0, v2}, Lcom/android/internal/telephony/gemini/GeminiNetworkSubUtil;->a(Lcom/android/internal/telephony/gemini/GeminiPhone;ILandroid/os/Message;Landroid/os/Message;)V

    goto/16 :goto_6

    .line 339
    :cond_1f
    const/4 v0, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0, v0, v2, v4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 340
    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {p0, v2, v4, v5}, Lcom/android/internal/telephony/gemini/GeminiPhone;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    .line 341
    invoke-static {p0, p1, v0, v2}, Lcom/android/internal/telephony/gemini/GeminiNetworkSubUtil;->a(Lcom/android/internal/telephony/gemini/GeminiPhone;ILandroid/os/Message;Landroid/os/Message;)V

    goto/16 :goto_6

    .line 344
    :cond_20
    const/4 v0, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0, v0, v2, v4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 345
    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {p0, v2, v4, v5}, Lcom/android/internal/telephony/gemini/GeminiPhone;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    .line 346
    invoke-static {p0, p1, v0, v2}, Lcom/android/internal/telephony/gemini/GeminiNetworkSubUtil;->a(Lcom/android/internal/telephony/gemini/GeminiPhone;ILandroid/os/Message;Landroid/os/Message;)V

    goto/16 :goto_6

    .line 349
    :cond_21
    const/4 v0, 0x1

    if-ne v4, v0, :cond_24

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isFlightModePowerOffMD()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 350
    if-nez p3, :cond_23

    .line 351
    if-eqz v2, :cond_22

    move-object v0, v3

    .line 352
    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    const/4 v2, -0x1

    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Lcom/android/internal/telephony/PhoneProxy;->setRadioMode(ILandroid/os/Message;)V

    goto/16 :goto_6

    :cond_22
    move-object v0, v1

    .line 354
    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    const/4 v2, -0x1

    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Lcom/android/internal/telephony/PhoneProxy;->setRadioMode(ILandroid/os/Message;)V

    goto/16 :goto_6

    .line 356
    :cond_23
    const-string v0, "Air plane mode but is boot up, do nothing"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiNetworkSubUtil;->a(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 359
    :cond_24
    if-eqz v2, :cond_25

    move-object v0, v3

    .line 360
    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Lcom/android/internal/telephony/PhoneProxy;->setRadioMode(ILandroid/os/Message;)V

    goto/16 :goto_6

    :cond_25
    move-object v0, v1

    .line 362
    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Lcom/android/internal/telephony/PhoneProxy;->setRadioMode(ILandroid/os/Message;)V

    goto/16 :goto_6

    .line 176
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static a(Lcom/android/internal/telephony/gemini/GeminiPhone;ILandroid/os/Message;Landroid/os/Message;)V
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, -0x1

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 383
    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    .line 384
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/PhoneProxy;

    .line 386
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getTelephonyMode()I

    move-result v2

    if-nez v2, :cond_6

    .line 387
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "External modem DualTalk ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/gemini/GeminiNetworkSubUtil;->a(Ljava/lang/String;)V

    .line 388
    if-ne p1, v4, :cond_1

    .line 389
    invoke-virtual {v0, v4, p2}, Lcom/android/internal/telephony/PhoneProxy;->setRadioMode(ILandroid/os/Message;)V

    .line 390
    invoke-virtual {v1, v5, p3}, Lcom/android/internal/telephony/PhoneProxy;->setRadioPower(ZLandroid/os/Message;)V

    .line 434
    :cond_0
    :goto_0
    return-void

    .line 391
    :cond_1
    if-ne p1, v7, :cond_2

    .line 392
    invoke-virtual {v0, v5, p2}, Lcom/android/internal/telephony/PhoneProxy;->setRadioMode(ILandroid/os/Message;)V

    .line 393
    invoke-virtual {v1, v4, p3}, Lcom/android/internal/telephony/PhoneProxy;->setRadioPower(ZLandroid/os/Message;)V

    goto :goto_0

    .line 394
    :cond_2
    if-ne p1, v8, :cond_3

    .line 395
    invoke-virtual {v0, v4, p2}, Lcom/android/internal/telephony/PhoneProxy;->setRadioMode(ILandroid/os/Message;)V

    .line 396
    invoke-virtual {v1, v4, p3}, Lcom/android/internal/telephony/PhoneProxy;->setRadioPower(ZLandroid/os/Message;)V

    goto :goto_0

    .line 397
    :cond_3
    if-nez p1, :cond_4

    .line 398
    invoke-virtual {v0, v5, p2}, Lcom/android/internal/telephony/PhoneProxy;->setRadioMode(ILandroid/os/Message;)V

    .line 399
    invoke-virtual {v1, v5, p3}, Lcom/android/internal/telephony/PhoneProxy;->setRadioPower(ZLandroid/os/Message;)V

    goto :goto_0

    .line 400
    :cond_4
    if-ne p1, v6, :cond_5

    .line 401
    invoke-virtual {v0, v6, p2}, Lcom/android/internal/telephony/PhoneProxy;->setRadioMode(ILandroid/os/Message;)V

    .line 402
    invoke-virtual {v1, v5, v4}, Lcom/android/internal/telephony/PhoneProxy;->setRadioPower(ZZ)V

    goto :goto_0

    .line 404
    :cond_5
    const-string v0, "Wrong dual sim mode"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiNetworkSubUtil;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 407
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Internal modem DualTalk ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/gemini/GeminiNetworkSubUtil;->a(Ljava/lang/String;)V

    .line 408
    if-ne p1, v4, :cond_7

    .line 409
    invoke-virtual {v0, v4, p2}, Lcom/android/internal/telephony/PhoneProxy;->setRadioMode(ILandroid/os/Message;)V

    .line 410
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isRadioOffPowerOffMD()Z

    move-result v0

    if-nez v0, :cond_0

    .line 411
    invoke-virtual {v1, v5, p3}, Lcom/android/internal/telephony/PhoneProxy;->setRadioMode(ILandroid/os/Message;)V

    goto :goto_0

    .line 412
    :cond_7
    if-ne p1, v7, :cond_9

    .line 413
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isRadioOffPowerOffMD()Z

    move-result v2

    if-nez v2, :cond_8

    .line 414
    invoke-virtual {v0, v5, p2}, Lcom/android/internal/telephony/PhoneProxy;->setRadioMode(ILandroid/os/Message;)V

    .line 415
    :cond_8
    invoke-virtual {v1, v4, p3}, Lcom/android/internal/telephony/PhoneProxy;->setRadioMode(ILandroid/os/Message;)V

    goto :goto_0

    .line 416
    :cond_9
    if-ne p1, v8, :cond_a

    .line 417
    invoke-virtual {v0, v4, p2}, Lcom/android/internal/telephony/PhoneProxy;->setRadioMode(ILandroid/os/Message;)V

    .line 418
    invoke-virtual {v1, v4, p3}, Lcom/android/internal/telephony/PhoneProxy;->setRadioMode(ILandroid/os/Message;)V

    goto :goto_0

    .line 419
    :cond_a
    if-nez p1, :cond_c

    .line 420
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isRadioOffPowerOffMD()Z

    move-result v2

    if-nez v2, :cond_b

    .line 421
    invoke-virtual {v0, v5, p2}, Lcom/android/internal/telephony/PhoneProxy;->setRadioMode(ILandroid/os/Message;)V

    .line 422
    invoke-virtual {v1, v5, p3}, Lcom/android/internal/telephony/PhoneProxy;->setRadioMode(ILandroid/os/Message;)V

    goto :goto_0

    .line 424
    :cond_b
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 426
    :cond_c
    if-ne p1, v6, :cond_d

    .line 427
    invoke-virtual {v0, v6, p2}, Lcom/android/internal/telephony/PhoneProxy;->setRadioMode(ILandroid/os/Message;)V

    .line 428
    invoke-virtual {v1, v6, p3}, Lcom/android/internal/telephony/PhoneProxy;->setRadioMode(ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 430
    :cond_d
    const-string v0, "Wrong dual sim mode"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiNetworkSubUtil;->a(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private static a(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 488
    const-string v0, "PHONE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[GeminiNetworkSubUtil] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    return-void
.end method

.method static b(Lcom/android/internal/telephony/gemini/GeminiPhone;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 437
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    .line 438
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/PhoneProxy;

    .line 442
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/PhoneProxy;->setAutoGprsAttach(I)V

    .line 443
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/PhoneProxy;->setAutoGprsAttach(I)V

    .line 485
    return-void
.end method
